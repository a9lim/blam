from w45inspect import *
from reg import convert,regular,portable,d,fam
def options(R):
    h,args=fam.flat(d.subst(R,0,d.Kc('c')));a,*cs=args;z=d.Z()
    core=d.A(h,a);root=d.A(d.subst(R,0,d.Kc('c')),z)
    # First beta-step of the literal root let, lifted across the pending arguments and zero.
    path=(1,)*(len(cs)+1)
    yield core,[],cs+[z]
    yield d.beta(h[1],a),[path],cs+[z]
    yield root,[],[]
    prep=[];t=root
    for n in range(8):
        p=fam.weakpath(t)
        if p is None:break
        t=fam.mx.rewrite(t,p);prep=prep+[p]
        if n in (1,3,7):yield t,prep,[]
def fillExpr(t):
    nodes=[]
    def visit(x,level):
        idx=len(nodes);nodes.append(None)
        if x[0]=='k':nodes[idx]=level+dict(c=0,j=1,N=2,r=3)[x[1]]
        elif x[0]=='l':visit(x[1],level+1)
        elif x[0]=='a':visit(x[1],level);visit(x[2],level)
    visit(t,0)
    return '(fun p => match p with '+' '.join(f'| {i} => .var {n}' for i,n in enumerate(nodes) if n is not None)+' | _ => .var 0)'
def find(i,e):
    limit();R=ad.tup(e['source'])
    opts=list(options(R));attempts=[];hits=[]
    for k,mode in ((0,'site'),(1,'lambda'),(1,'site'),(1,'arg'),(2,'site'),(2,'arg'),(2,'argenv'),(3,'lambda'),(3,'site'),(3,'arg')):
        for idx,(term,prep,rest) in enumerate(opts):
            try:res=regular.discover(convert(term),k,cap=16000,seconds=.5,mode=mode)
            except regular.Limit:continue
            if not res['ok']:continue
            c=portable.portable(res);n=len(c['states']);hits.append((n,idx,k,mode,c))
            if n<=250:break
        if hits and (min(h[0] for h in hits)<=250 or k>=2):break
    if not hits:return
    n,idx,k,mode,c=min(hits,key=lambda h:h[0]);term,prep,rest=opts[idx]
    data=dict(i=i,states=n,k=k,mode=mode,idx=idx,certificate=c)
    save(D/f'regular{i}.json',data)
    emit(R,i,term,prep,rest,c)
def emit(R,i,t,prep,rest,c):
    name=f'Slice45Regular{i}';s=portable.lean(c,name)
    s=s.replace('import Regular','import Blc.SelfintRegularSoundness\nimport Blc.SelfintRootLetEmbedding\nimport Certificates').split('theorem no_stop')[0]
    s+='open Blc Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintClass Blc.SelfintSourceCost Blc.HandlerLet Blc.SelfintLowerBound Blc.SelfintStreamSpecializer\n'
    s+=f'def core : Term := {ex.lean(t)}\ntheorem forward : ordered code = true := by decide\ndef model : Model P := codeModel (rankedCode code forward) {fillExpr(t)}\ntheorem literal : model.term 0 = core := by decide +kernel\ntheorem diverges (n : Nat) : ¬ Count core n := by rw [←literal]; exact regular_no_clock model closed root n\n'
    s+=f'def r{i} : Term := {ex.lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n intro hr\n have replay : betaSteps {ex.ps(prep)} (.app r{i} Z) = some (spine core {ex.ls(rest)}) := by decide\n have nf := betas_preserve_nf (betaSteps_sound _ replay) hr.zero_red zeroOut_normal\n obtain ⟨n,h⟩ := hasNormalForm_count ⟨_,nf,zeroOut_normal⟩\n obtain ⟨m,_,hm⟩ := SelfintRootLetOrbit.count_spine_fn {ex.ls(rest)} h\n exact diverges m hm\n#print axioms reject{i}\nend Certgen.{name}\n'
    (proofs/(name+'.lean')).write_text(s)
if __name__=='__main__':
    op,es=residual()
    if sys.argv[1]=='one':i=int(sys.argv[2]);find(i,es[i])
    elif sys.argv[1]=='discover':
        supervise([(f'regfind{i}',[sys.executable,'-B','w45regular.py','one',str(i)],905000000,None) for i in op if not (D/f'regular{i}.json').exists()],'regdiscovery')
    elif sys.argv[1]=='compile':
        supervise(leanjobs([f'Slice45Regular{i}' for i in op if (D/f'regular{i}.json').exists()]),'reglean')
