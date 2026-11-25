from structural import *
def deep(t):
 ops=[]
 def go(t,p,dep):
    if dep>80:return t
    if t[0]=='l':return d.L(go(t[1],p+(0,),dep+1))
    if t[0]!='a':return t
    f=go(t[1],p+(1,),dep+1);a=go(t[2],p+(2,),dep+1);u=d.A(f,a)
    if f[0]=='l' and d.size(u)<300:
        new=d.beta(f[1],a)
        if d.size(new)<410:ops.append(p);return new
    return u
 return go(t,(),0),ops
def deepcert(R):
 t=d.A(d.subst(R,0,d.Kc('c')),d.Z());prep=[]
 for _ in range(10):
    if d.size(t)>420:break
    c=au.cert(t,d.A(d.Kc('r'),d.Kc('j')))
    if c and c['kind'] in ('head','loop','missing'):return 'internal '+c['kind'],ex.proof(c,'true',prep)
    if 'r' not in cfa(t)[0]:
        D,C,ann=flowexport(t)
        return 'developed flow',f' exact Rootcert2Flow.reject {ex.ps(prep)} {D} {C} {ann} (by decide) (by decide) (by decide)\n'
    t,ops=deep(t);prep+=ops
    if not ops or len(prep)>350:break
 return None
def full(R):
 hit=struct(R)
 if hit:return hit
 hit=deepcert(R)
 if hit:return hit
 h,args=fam.flat(R);a,*cs=args;V,L,A=d.V,d.L,d.A
 J=L(A(V(0),L(V(1))))
 if a==L(A(V(0),A(V(0),A(V(0),J)))) and h==L(A(V(0),V(0))):
    return 'diagonal power',f' exact SelfintRootLetPowers.diagonal_not_reader_after_rigid 3 {1 if cs[0][0]=="k" else 0} {ex.ls(cs[1:])}\n'
def apply(w,fn):
    r=json.loads((P/f'cert{w}.json').read_text());es=json.loads((P/f'probe{w}.json').read_text())['exceptions']
    for i in r['open'].copy():
        R=ad.tup(es[i]['source']);hit=fn(R)
        if not hit:continue
        k,pf=hit;name=f'Slice{w}Extra{i}'
        (P/'proofs'/f'{name}.lean').write_text(f'import Flow\nimport Blc.SelfintRootLetPending\nimport Blc.SelfintRound8ReaderTwoLambda\nnamespace Blc.{name}\nopen SelfintClass HandlerLet\nset_option maxRecDepth 20000\nset_option maxHeartbeats 3000000\ndef readerSource : Term := {ex.lean(R)}\ntheorem reject : ¬ Reader readerSource := by\n'+pf+'#print axioms reject\n'+f'end Blc.{name}\n')
        try:run(name)
        except RuntimeError as err:print('failed',i,str(err)[-650:],flush=True);continue
        r['kinds'][k]=r['kinds'].get(k,0)+1;r['modules'].append(name);r['by_index'][str(i)]=k;r['open'].remove(i)
        (P/f'cert{w}.json').write_text(json.dumps(r))
    print('residual',r['open'])
if __name__=='__main__':
 if 'preview' in sys.argv:
    r=json.loads((P/'cert41.json').read_text());e=json.loads((P/'probe41.json').read_text())['exceptions']
    for i in r['open']:
        h=full(ad.tup(e[i]['source'])); print(i,h[0] if h else 'open')
 else:apply(41,full)
