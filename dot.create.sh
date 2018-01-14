python3 find.xrefs.py > xrefs.err
head xrefs.err -n -1 > xrefs.asc
python3 gen.xref.dot.py > xrefs.dot
#dot -oxrefs.png -Tpng xrefs.dot
