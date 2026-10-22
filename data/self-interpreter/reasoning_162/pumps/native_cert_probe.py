from flow import full
from normalize_list import enc
from classify import *
import subprocess
root=HERE.parents[3]
bs=(HERE/'unresolved_residuals.bits').read_text().splitlines()
rows_=[dict(arm=b,invocation=enc(('l',('l',full(dec(b)))))) for b in bs]
(HERE/'native_roots.bits').write_text(''.join(x['invocation']+'\n' for x in rows_))
(HERE/'native_roots.json').write_text(json.dumps(rows_,indent=2)+'\n')
start=time.monotonic()
p=subprocess.run([str(HERE/'native_blam'),'cert','search','--file',str(HERE/'native_roots.bits'),'--steps','1000','--nodes','100000','--lemma-steps','4096','--threads','2'],text=True,capture_output=True,timeout=110)
(HERE/'native_certificates.tsv').write_text(p.stdout);(HERE/'native-cert.log').write_text(p.stderr)
print(dict(exit=p.returncode,seconds=time.monotonic()-start));print(p.stderr[-1500:]);print(Counter(line.split('\t')[0] for line in p.stdout.splitlines()))
