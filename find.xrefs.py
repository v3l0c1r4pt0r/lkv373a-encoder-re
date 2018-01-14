#!/usr/bin/env python3
import re

def sanitize(name):
    return name[name.index('<')+1:name.index('>')]

with open('lkv373a.fw.asc','r') as fp:
    dump = fp.readlines()
dumpstr = ''.join(dump)
parts = re.split('([0-9a-f]{8} <.*>:\n)', dumpstr)
for i in range(len(parts)):
    if i % 2 == 0:
        # ignore contents (must be used together with caption)
        continue
    symbol = sanitize(parts[i])
    xrefs = re.findall('\<.*\>', parts[i + 1])
    xrefs = [sanitize(xref) for xref in xrefs]
    xrefs = set(xrefs)
    print(symbol, ','.join(xrefs))
