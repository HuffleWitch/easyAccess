from .artime import *
import copy
from .cons import *
import random
import math
from sortedcontainers import SortedDict
from decimal import Decimal
from .ucs import *

def initialize_times_dict(pref):
    """
    Makes set of all used times in given preferences and turns that set into
    a dictionary of empty lists.
    """
    times = set()
    for course in pref:
        for time in pref[course]['time']:
            times.add(time)
    return SortedDict({time:[] for time in times})

def build_domains(pref):
    """
    Given a set of course preferences, generates complete domains of every
    variable. Here variables are courses and each domain is a combination of a
    specific time and course. Size of each domain is therefore
    # of possible rooms * # of possible times.
    """
    domains = {course:[] for course in pref}
    for course in pref:
        for room in pref[course]['room']:
            for time in pref[course]['time']:
                domains[course].append({'name':pref[course]['name'],
                                        'prof':pref[course]['prof'],
                                        'room':room,
                                        'time':time,
                                        'dept':pref[course]['dept'],
                                        'level':pref[course]['level'],
                                        'conflict':False,
                                        'enemies':''})
    return domains

def random_solution(domains, times_dict):

    """
    Creates a fully random solution by assigning each variable a random value
    from its domain
    """
    solution = {}

    for variable in domains:
        val =  random.choice(domains[variable])
        solution[variable] = val
        times_dict[val['time']].append(val)

    return solution


def get_neighbor(solution, domains, times_dict):

    """
    Finds a neighboring solution by picking a varible at random and changing
    its assignment to a random different value in its domain.
    """
    chosen_var = random.choice(list(domains.keys()))
    old_val = solution[chosen_var]
    chosen_var_dom = domains[chosen_var]
    chosen_var_dom.remove(old_val)

    if (len(chosen_var_dom) > 0):
        neighbor = dict(solution)
        new_val = random.choice(chosen_var_dom)
        neighbor[chosen_var] = new_val

        times_dict[old_val['time']].remove(old_val)
        times_dict[new_val['time']].append(new_val)

        chosen_var_dom.append(old_val)
        return neighbor, old_val, new_val
    else:
        chosen_var_dom.append(old_val)
        return solution, old_val, old_val

def acceptance_probability(old_cost, new_cost, T):
    """
    Calculates the acceptance_probability of the annealing algorithm as a
    function of e^((old_cost-new_cost)/Temperature)
    """
    delta = new_cost - old_cost

    return math.exp(-delta / T)

def mark_conflicts(solution):
    """
    Marks variables not fitting constraints
    """
    vals = list(solution.values())
    i = 1
    for val in vals:
        for val2 in vals[i:]:
            if (val['prof'] == val2['prof'] or val['room'] == val2['room']) and val['time'].overlaps(val2['time']):
                val['conflict'] = True
                val2['conflict'] = True

                if val['enemies'] == "":
                    val['enemies'] += val2['name']
                else:
                    val['enemies'] += "<br>"+val2['name']

                if val2['enemies'] == "":
                    val2['enemies'] += val['name']
                else:
                    val2['enemies'] += "<br>"+val['name']
        i += 1

def anneal_solution(solution, domains, times_dict):
    "Uses simulated annealing to make the best possible solution"
    old_cost = all_cons(times_dict)

    T = 5000
    T_min = 5
    alpha = 0.9

    while T > T_min:
        iterations = 0
        while iterations < 100:

            new_sol, was_removed, was_added = get_neighbor(solution, domains, times_dict)
            new_cost = all_cons(times_dict)

            ap = acceptance_probability(old_cost, new_cost, T)
            if ap > random.random():
                solution = new_sol
                old_cost = new_cost

            else:
                times_dict[was_removed['time']].append(was_removed)
                times_dict[was_added['time']].remove(was_added)

            iterations += 1
        T = T*alpha
    mark_conflicts(solution)
    return solution

def get_solution(pref):
    """
    Sets up annealer by making a random solution and then passing parameters
    to anneal_solution
    """

    times_dict = initialize_times_dict(pref)
    domains = build_domains(pref)

    rand_sol = random_solution(domains, times_dict)

    return anneal_solution(rand_sol, domains, times_dict)
