#!/usr/bin/python3

cpuinfo = open('/proc/cpuinfo', 'r')

print(cpuinfo)

"""
for line in cpuinfo:
	print(line, end ='')
"""
print(cpuinfo.readline())
print(cpuinfo.readline())
print(cpuinfo.readline())
print(cpuinfo.readline())
print(cpuinfo.readline())
print(cpuinfo.readline())
