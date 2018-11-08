
def all_cons(times_dict):
    """ Takes assignment and determines whether it has a room double booked """
    result = 0

    ## Check all courses that are at the same time against each other
    for time in times_dict:
        vals = times_dict[time]
        i = 1
        for val in vals:
            for val2 in vals[i:]:
                if val['room'] == val2['room']:
                    result += 100
                if val['prof'] == val2['prof']:
                    result += 100
                if val['dept'] == val2['dept'] and val['level'] == val2['level']:
                    result += 10
            i += 1

    ## Check all courses at times_dict that overlap against each other.
    tkeys = times_dict.keys()
    j = 1
    for time in tkeys:
        for time2 in tkeys[j:]:
            if time.overlaps(time2):
                for val in times_dict[time]:
                    for val2 in times_dict[time2]:
                        if val['room'] == val2['room']:
                            result += 100
                        if val['prof'] == val2['prof']:
                            result += 100
                        if val['dept'] == val2['dept'] and val['level'] == val2['level']:
                            result += 10
            else:
                break
        j += 1

    return result
