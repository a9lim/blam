from probe import *
from export import ls,ps
rs=source_rows();cs=json.loads((H/'mixed_certificates.json').read_text());s='import Certificates\nnamespace Blc.Rootcert.MixedCases\nopen Term SelfintClass SelfintLowerBound SelfintSourceCost HandlerLet\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
for r in cs:
 i=r['id'];R=a.tup(rs[i][1]['source']);s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n exact mixed_reduct true {ps(r["prep"])} {ps(r["paths"])} {lean(a.tup(r["core"]))} {ls(r["extra"])} {ls(r["rest"])} (by decide) (by decide)\n#print axioms reject{i}\n'
s+='end Blc.Rootcert.MixedCases\n';(H/'MixedCases.lean').write_text(s)
