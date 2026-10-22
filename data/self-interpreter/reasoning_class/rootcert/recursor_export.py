from probe import *
from export import ls,ps
rs=source_rows();cs=json.loads((H/'k_certificates.json').read_text());s='import Recursor\nnamespace Blc.Rootcert.RecursorCases\nopen Term SelfintClass RootcertRecursor\nset_option maxRecDepth 10000\n'
for rec in cs:
 i=rec['id'];R=a.tup(rs[i][1]['source']);s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n exact reject {ps(rec["prep"])} {lean(a.tup(rec["rest"][0]))} {ls(rec["rest"][1:])} (by decide)\n#print axioms reject{i}\n'
s+='end Blc.Rootcert.RecursorCases\n';(H/'RecursorCases.lean').write_text(s);print(len(cs))
