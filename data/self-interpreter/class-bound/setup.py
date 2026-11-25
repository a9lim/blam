from pathlib import Path
import subprocess
out=Path(__file__).resolve().parent
base="data/self-interpreter/reasoning_class/"
for lane in ('rootnl','simplify','pending','handlerlet','jn','rootlow','rootcert2','certgen'):
    names=subprocess.check_output(['git','ls-tree','-r','--name-only','703f50d:'+base+lane],text=True).splitlines()
    for name in names:
        if not name.endswith('.py'): continue
        p=out/'archive'/lane/name
        p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show','703f50d:'+base+lane+'/'+name]))
p=out/'archive/simplify/count_extensions.py'
s=p.read_text().split('def run(k,d):')[1].split('  basecells[f.cell(key)]')[0].split(' for key,n in f.roots():')[1]
import re
s=re.sub(r"cuts\['[^']+'\]\+=nnew;continue",'return 0',s)
s=s.replace(';pre+=n','').replace(";cuts['B_prefix_forced_or_direct_j']+=n-nnew",'').replace('if not nnew:continue','if not nnew:return 0')
(out/'coefficient.py').write_text("from count_extensions import f,forest,is_j,extension\ndef multiplicity(key,n):\n  k,d=f.K,f.JD"+s+"  return 0 if extension(key) else nnew\n")
