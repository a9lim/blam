from w42model import *
def segments(i,es):
    data=json.loads((D/f'regular{i}.json').read_text())
    name=f'Slice42Regular{i}';R=ad.tup(es[i]['source']);t,prep,rest=list(options(R))[data['idx']];c=data['certificate'];n=data['states']
    emit(R,i,t,prep,rest,c)
    f=proofs/(name+'.lean');raw=f.read_text()
    def put(suffix,imports,body):
        mod=name+suffix
        (proofs/(mod+'.lean')).write_text(''.join('import '+m+'\n' for m in imports)+f'namespace Certgen.{name}\nset_option maxRecDepth 30000\nset_option maxHeartbeats 12000000\n'+body+'\nend Certgen.'+name+'\n')
        return mod
    data_mod=put('Data',['Blc.SelfintRegularCertificate'],raw[raw.index('def code :'):raw.index('theorem block0')])
    opens='open Blc Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintClass Blc.SelfintSourceCost\n'
    # Refer to child definitions by name so overlapping syntax subtrees are elaborated once.
    defs=[];nodes=[]
    def go(x,dep):
        j=len(nodes);nodes.append(None)
        if x[0]=='l':body=f'.lam node{go(x[1],dep+1)}'
        elif x[0]=='a':body=f'.app node{go(x[1],dep)} node{go(x[2],dep)}'
        else:body=ex.lean(x,dep)
        defs.append(f'def node{j} : Term := {body}');return j
    go(t,0)
    modelbody=bound_model(t)
    modelbody=modelbody[modelbody.index('def termAt'):]
    model=put('Model',[data_mod,'Blc.SelfintRegularSoundness'],opens+'\n'.join(defs)+'\ndef core : Term := node0\ndef syntaxTable : Array Term := #['+', '.join(f'node{j}' for j in range(len(nodes)))+']\n'+modelbody)
    # Isolate four state checks per module. The binary selection proof keeps
    # each arithmetic obligation local to one interval.
    step=4
    starts=list(range(0,n,step))
    chunks=[put(f'Four{lo:03d}',[data_mod],f'theorem small{lo} : checkRange P V K states hints {lo} {min(step,n-lo)} = true := by decide +kernel') for lo in starts]
    def select(xs,pad):
        if len(xs)==1:
            lo=xs[0]
            return pad+f'exact range_sound small{lo} i (by omega) (by omega) hi'
        m=len(xs)//2
        return pad+f'by_cases bound{xs[m]} : i < {xs[m]}\n'+pad+'· '+select(xs[:m],pad+'  ').lstrip()+'\n'+pad+'· '+select(xs[m:],pad+'  ').lstrip()
    closed=f'theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by\n have hh : i < {n} := hi\n'+select(starts,' ')+'\n'+raw[raw.index('theorem closed :'):raw.index('open Blc Blc.SelfintRegularSoundness')]
    # Reuse the existing literal replay and no-clock transport.
    final=put('',[model,*chunks,'Blc.SelfintRootLetEmbedding','Certificates'],opens+'open Blc.HandlerLet Blc.SelfintLowerBound Blc.SelfintStreamSpecializer\n'+closed+raw[raw.index('theorem diverges'):raw.rindex('end Certgen.')])
    return [data_mod],[model,*chunks],[final]
def build(names,stage,as_import):
 jobs=leanjobs(names)
 for key,cmd,cap,checkout in jobs:
  if as_import:cmd[1:1]=['-o',str(proofs/(key+'.olean'))]
 supervise(jobs,stage)
if __name__=='__main__':
 op,es=residual();ids=list(map(int,sys.argv[1:])) or op
 plans=[segments(i,es) for i in ids]
 for j in range(3):build([name for plan in plans for name in plan[j]],f'regsplit{j}',j<2)
