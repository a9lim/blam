import re, sys
f = sys.argv[1]
L = open(f).read().split('\n')
for n in sys.argv[2:]:
    for i,l in enumerate(L):
        if re.match(r'\s*(private\s+)?(theorem|lemma|def)\s+'+re.escape(n)+r'(\s|$)', l):
            j=i
            while j>0 and L[j-1].strip()!='' and not L[j-1].startswith('#') and (i-j)<8: j-=1
            print(f"--- {n} @{i+1}")
            k=i+1
            while k<len(L) and ':=' not in L[k-1] and k-i<10: k+=1
            print('\n'.join(L[j:k]))
