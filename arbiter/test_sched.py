from .sched import *
from .ucs import *
import pytest
import random

example_preferences = {2:{'name':'Cooking 102',
                          'prof':'Sandy',
                          'time':[MWF8],
                          'room':['HNE 168'],
                          'dept':'CS',
                          'level': 'Introductory'},
                       1:{'name':'Cooking 101',
                          'prof':'Bob',
                          'time':[MWF8, MWF9],
                          'room':['HNE 168'],
                          'dept':'CS',
                          'level': 'Introductory'}}

example_solution = {2:{'name':'Cooking 102',
                       'prof':'Sandy',
                       'time':MWF8,
                       'room':'HNE 168',
                       'dept':'CS',
                       'level': 'Introductory'},
                    1:{'name':'Cooking 101',
                       'prof':'Bob',
                       'time':MWF9,
                       'room':'HNE 168',
                       'dept':'CS',
                       'level': 'Introductory'}}

def test_init_td():
    sd = SortedDict()
    sd[MWF9] = []
    sd[MWF8] = []

    assert initialize_times_dict(example_preferences) == sd

def test_build_domains():
    d = build_domains(example_preferences)
    assert d == {1:[{'name':'Cooking 101', 'prof':'Bob', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''},
                    {'name':'Cooking 101', 'prof':'Bob', 'room':'HNE 168', 'time':MWF9, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''}],
                 2:[{'name':'Cooking 102', 'prof':'Sandy', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''}]}

def test_random_solutions():
    print("blah")

def test_mark_conflicts():
    unmarked = {1:{'name':'Cooking 101', 'prof':'Bob', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''},
                2:{'name':'Cooking 102', 'prof':'Sandy', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''}}

    mark_conflicts(unmarked)

    assert unmarked == {1:{'name':'Cooking 101', 'prof':'Bob', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':True, 'enemies':'Cooking 102'},
                        2:{'name':'Cooking 102', 'prof':'Sandy', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':True, 'enemies':'Cooking 101'}}

def test_ap():
    assert acceptance_probability(1, 1, 0.1) == 1
    assert acceptance_probability(1, 2, 0.1) == math.exp(-10)
    assert acceptance_probability(5, 10, 0.1) == math.exp(-50)
    assert acceptance_probability(20, 2, 0.1) == math.exp(180)
    assert acceptance_probability(0, 0, 0.1) == 1
    assert acceptance_probability(-100, -100, 0.1) == 1
    assert acceptance_probability(-10, 5, 0.1) == math.exp(-150)
    assert acceptance_probability(5, -10, 0.1) == math.exp(150)

    for repeat in range(100):
        assert acceptance_probability(random.randint(0,100), random.randint(101, 200), random.randint(1, 1000)) < 1
        assert acceptance_probability(random.randint(101, 200), random.randint(0,100), random.randint(1, 1000)) >= 1

    print(acceptance_probability(0, 1, 5000))
    print(acceptance_probability(0, 1, 1))
    print(acceptance_probability(1, 0, 5000))
    print(acceptance_probability(1, 0, 1))

def test_get_neighbor():
    domains = build_domains(example_preferences)
    times_dict = initialize_times_dict(example_preferences)
    solution = {1 : domains[1][0], 2 : domains[2][0] }
    supposed_neighbor = {1 : domains[1][1], 2 : domains[2][0] }
    times_dict[domains[1][0]['time']].append(domains[1][0])
    times_dict[domains[2][0]['time']].append(domains[2][0])
    neighbor, was_removed, was_added = get_neighbor(solution, domains, times_dict)

    if (neighbor == solution):
        test_get_neighbor()
    else:
        assert neighbor == supposed_neighbor

def test_get_solution():
    solution = get_solution(example_preferences)
    print(solution)

    assert solution[1]['room'] == 'HNE 168'
    assert solution[1]['time'].equals(MWF9)

    assert solution[2]['room'] == 'HNE 168'
    assert solution[2]['time'].equals(MWF8)
