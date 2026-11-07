import sys
def sh(t, names=()):
    k=t[0]
    if k=='V': return names[t[1]]
    if k=='C': return t[1]
    if k=='L':
        n='abdefhikmnopq'[len(names)]; return '(\\%s. %s)'%(n, sh(t[1],(n,)+names))
    return '(%s %s)'%(sh(t[1],names), sh(t[2],names))
for line in sys.stdin:
    if line.startswith('by'): print(line.strip()); continue
    w, rest = line.split(' ',1); print(w, sh(eval(rest)))
