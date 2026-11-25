from cert import *
from leancheck import run
def family(R):
    h,args=fam.flat(R);a,*cs=args;b=h[1]
    def lams(t):return (1+lams(t[1]) if t[0]=='l' else lams(t[1])+lams(t[2]) if t[0]=='a' else 0)
    if len(cs)>=2 and not lams(b) and lams(a)<=2 and all(not lams(t) for t in cs):
        c,d,*rest=cs
        return 'two-lambda helper',f' exact SelfintRound8ReaderTwoLambda.flat_root_two_lambda_not_reader (b := {ex.lean(b)}) (a := {ex.lean(a)}) (c := {ex.lean(c)}) (d := {ex.lean(d)}) (cs := {ex.ls(rest)}) (by decide) (by decide) (by decide) (by decide)\n'
    # Test definitionally equal closed cores via the kernel.
    core=fam.d.A(h,a)
    candidate_core=fam.d.A(fam.d.L(fam.d.A(fam.d.V(0),fam.d.V(0))),ad.tup(['l',['a',['v',0],['l',['a',['v',1],['a',['v',0],['l',['v',2]]]]]]]))
    if core==candidate_core:return 'positive-head embedding',f' exact SelfintRootLetEmbedding.diagonal_not_reader {ex.ls(cs)}\n'
    return None
def main(w):
    r=json.loads((P/f'cert{w}.json').read_text());es=json.loads((P/f'probe{w}.json').read_text())['exceptions']
    indices=r['open'].copy()
    for i in indices:
        R=ad.tup(es[i]['source']);hit=family(R)
        if not hit:continue
        k,pf=hit;name=f'Slice{w}Extra{i}'
        (P/'proofs'/f'{name}.lean').write_text(f'import Blc.SelfintRootLetPending\nimport Blc.SelfintRound8ReaderTwoLambda\nnamespace Blc.{name}\nopen SelfintClass\ndef readerSource : Term := {ex.lean(R)}\ntheorem reject : ¬ Reader readerSource := by\n'+pf+'#print axioms reject\n'+f'end Blc.{name}\n')
        run(name)
        r['kinds'][k]=r['kinds'].get(k,0)+1;r['modules'].append(name);r['by_index'][str(i)]=k;r['open'].remove(i)
        (P/f'cert{w}.json').write_text(json.dumps(r))
    print('extra',w,'open',r['open'])
if __name__=='__main__':main(int(sys.argv[1]))
