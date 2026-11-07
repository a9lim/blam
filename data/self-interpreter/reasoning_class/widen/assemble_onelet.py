from pathlib import Path
p=Path(__file__).resolve().parent
w=p/'Widen.lean'
s=w.read_text()
a='/- BEGIN ONE-LET SOURCE CERTIFICATE -/'
b='/- END ONE-LET SOURCE CERTIFICATE -/'
if a in s:
    i=s.index(a); j=s.index(b,i)+len(b)
else:
    i=j=s.index('#print axioms letBoth_laws')
s=s[:i]+a+'\n'+(p/'one_let_section.lean').read_text()+'\n'+b+'\n'+s[j:].lstrip('\n')
w.write_text(s)
