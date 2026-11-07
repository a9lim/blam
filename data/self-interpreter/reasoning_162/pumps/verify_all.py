"""Final fixed-list audit. No arm enumeration or certificate search."""
from verify import *
from normalize_list import one,enc
import signal
class Deadline(Exception):pass
def timeout(*_):raise Deadline('110-second final audit deadline')
signal.signal(signal.SIGALRM,timeout);signal.setitimer(signal.ITIMER_REAL,110)
start=time.monotonic();source=list(rows());source_bits={b for b,_,_ in source}
assert len(source)==len(source_bits)==11109
assert all(2<=len(b)<=27 and fv(dec(b))<=set(range(4)) for b in source_bits)
normalization=json.loads((HERE/'normalization.json').read_text())['rows']
assert {x['bits'] for x in normalization}==source_bits
bridges=0
for x in normalization:
 t=dec(x['bits'])
 for _ in range(x['steps']):
  t=one(t);assert t is not None
 assert enc(t)==x['reduct'];bridges+=x['steps']
certs=json.loads((HERE/'certificates.json').read_text())['rows'];lookup={x['bits']:x for x in certs}
assert set(lookup)=={x['reduct'] for x in normalization}
checked=[];unknown=[]
for r in certs:
 if r['kind']=='unknown':
  Realizer(Machine(dec(r['bits']))).check_rules();unknown.append(r['bits']);continue
 try:q=check_record(r)
 except Exception:
  print('FAILED',r['bits'],r['kind'],r.get('source'),flush=True);raise
 q['bits']=r['bits'];checked.append(q)
covered={x['bits'] for x in normalization if lookup[x['reduct']]['kind']!='unknown'}
summary=dict(input_sha256=hashlib.sha256(SRC.read_bytes()).hexdigest(),source_arms=len(source),source_covered=len(covered),source_unresolved=len(source)-len(covered),normalization_beta_steps=bridges,distinct_residuals=len(certs),checked_residuals=len(checked),unknown_residuals=len(unknown),checked_families=dict(Counter(x['kind'] for x in checked)),macro_equations=sum(x['equations'] for x in checked),seconds=time.monotonic()-start)
(HERE/'verification.json').write_text(json.dumps(dict(**summary,rows=checked),indent=2)+'\n')
codefiles=['classify.py','grammar.py','eval_grammar.py','simplified.py','dag_pump.py','lambda_check.py','normalize_list.py','verify.py','verify_all.py','PumpLemmas.lean','WrapperConcrete.lean','GeneratorAudit.lean','WrongHeadConcrete.lean','flow.py','matches_bug.rs']
(HERE/'source_hashes.json').write_text(json.dumps({f:hashlib.sha256((HERE/f).read_bytes()).hexdigest() for f in codefiles},indent=2)+'\n')
print(json.dumps(summary,indent=2));signal.setitimer(signal.ITIMER_REAL,0)
