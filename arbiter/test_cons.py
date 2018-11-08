from .cons import *
from .ucs import *
from .sched import *
import pytest

example_preferences = {1:{'prof':1,
                         'time':[MWF8, MWF9],
                         'room':['HNE 168'],
                         'dept':'CS',
                         'level': 'Introductory'},
                      2:{'prof':2,
                         'time':[MWF8],
                         'room':['HNE 168'],
                         'dept':'CS',
                         'level': 'Introductory'}}

goodass = {1:{'time':MWF9, 'room':'HNE 168', 'prof':1, 'dept':'CS', 'level':'Introductory'},
           2:{'time':MWF8, 'room':'HNE 168', 'prof':2, 'dept':'CS', 'level':'Introductory'}}

def test_all_cons():
    sd = SortedDict()
    sd[MWF8] = [{'time':MWF8, 'room':'HNE 168', 'prof':1, 'dept':'CS', 'level':'Introductory'}, {'time':MWF8, 'room':'HNE 168', 'prof':2, 'dept':'CS', 'level':'Introductory'}]
    assert all_cons(sd) == 110

    sd[MWF8][1]['prof'] = 1

    assert all_cons(sd) == 210

    sd[MWF8].remove({'time':MWF8, 'room':'HNE 168', 'prof':1, 'dept':'CS', 'level':'Introductory'})
    sd[MWF9] = [{'time':MWF9, 'room':'HNE 168', 'prof':2, 'dept':'CS', 'level':'Introductory'}]

    print(sd)
    print(MWF8.overlaps(MWF9))
    assert all_cons(sd) == 0
