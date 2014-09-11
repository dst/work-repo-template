#!/usr/bin/env python

"""
Counts hours in specified kp file
Darek Stefanski
"""

import os
import sys

def get_hours(kp_file):
    f = os.popen('cat %s | grep "dst" | cut -d\"-\" -f3' % kp_file)
    hours = f.readlines()
    hours = map(lambda line: str2float(line.replace("h", "")), hours)
    return hours

def str2float(str):
    try:
        return float(str)
    except ValueError:
        print "Cannot parse float: %s" % str
        return 0    

def ornament(count):
    if count > 8:
        return "+"
    if count < 8:
        return "-"
    return ""

kp_file = sys.argv[1]
print "Counting hours in %s" % kp_file
hours = get_hours(kp_file)

sum = 0.0
diff = 0.0
for count in hours:
    print "%.1f %s" % (count, ornament(count))
    sum += count
    diff += (count - 8)
print "----------------"
print "TOTAL: %.1f" % sum
print "diff: %.1f" % diff

