from .sched import *
from .ucs import *
import pytest

example_preferences = {1:{'name':'Cooking 101',
                          'prof':'Bob',
                          'time':[MWF8, MWF9],
                          'room':['HNE 168'],
                          'dept':'CS',
                          'level': 'Introductory'},
                       2:{'name':'Cooking 102',
                          'prof':'Sandy',
                          'time':[MWF8],
                          'room':['HNE 168'],
                          'dept':'CS',
                          'level': 'Introductory'}}

def test_build_domains():
    d = build_domains(example_preferences)
    assert d == {1:[{'name':'Cooking 101', 'prof':'Bob', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''},
                    {'name':'Cooking 101', 'prof':'Bob', 'room':'HNE 168', 'time':MWF9, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''}],
                 2:[{'name':'Cooking 102', 'prof':'Sandy', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''}]}


def test_mark_conflicts():
    unmarked = {1:{'name':'Cooking 101', 'prof':'Bob', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''},
                2:{'name':'Cooking 102', 'prof':'Sandy', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':False, 'enemies':''}}

    mark_conflicts(unmarked)

    assert unmarked == {1:{'name':'Cooking 101', 'prof':'Bob', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':True, 'enemies':'Cooking 102'},
                        2:{'name':'Cooking 102', 'prof':'Sandy', 'room':'HNE 168', 'time':MWF8, 'dept':'CS', 'level':'Introductory', 'conflict':True, 'enemies':'Cooking 101'}}

def test_get_solution():
    solution = get_solution(example_preferences)
    assert solution[1]['room'] == 'HNE 168'
    assert solution[2]['room'] == 'HNE 168'
    assert solution[2]['time'].equals(MWF8)
    assert solution[1]['time'].equals(MWF9)
