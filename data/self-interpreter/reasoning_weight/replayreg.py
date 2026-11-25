from reg import *
from leancheck import run
def check(i):
    p=P/'proofs';name=f'Slice41Regular{i}'
    es=json.loads((P/'probe41.json').read_text())['exceptions']
    R=ad.tup(es[i]['source']);h,args=fam.flat(R);a=args[0];core=d.A(a,a)
    tag,k,mode,n,c=json.loads((P/f'reg{i}.json').read_text())
    assert tag=='core' and portable.check(c)
    s=portable.lean(c,name).replace('import Regular','import Blc.SelfintRegularSoundness\nimport Blc.SelfintRootLetEmbedding').split('theorem no_stop')[0]
    s+='open Blc Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintClass Blc.SelfintSourceCost\n'
    s+=f'def helper : Term := {ex.lean(a)}\ndef core : Term := .app helper helper\n'
    s+='theorem forward : ordered code = true := by decide\ndef model : Model P := codeModel (rankedCode code forward) (fun _ => .var 0)\n'
    s+='theorem literal : model.term 0 = core := by decide +kernel\ntheorem diverges (n : Nat) : ¬ Count core n := by rw [←literal]; exact regular_no_clock model closed root n\n'
    for j in (i,i+1):
        R=ad.tup(es[j]['source']);h,args=fam.flat(R);assert args[0]==a and h==d.L(d.A(d.V(0),d.V(0)))
        s+=f'def r{j} : Term := {ex.lean(R)}\ntheorem reject{j} : ¬ Reader r{j} := by\n intro hr\n have hr2 := SelfintRootLetPowers.reader_betas hr (SelfintFlatMinimum.betas_spine (Betas.head (Beta.beta (.app (.var 0) (.var 0)) helper) (Betas.refl _)) {ex.ls(args[1:])})\n exact SelfintRootLetEmbedding.no_reader_of_no_count core diverges {ex.ls(args[1:])} hr2\n#print axioms reject{j}\n'
    s+=f'end Certgen.{name}\n'
    (p/f'{name}.lean').write_text(s);run(name)
    f=P/'cert41.json';r=json.loads(f.read_text());key='regular closure and stack'
    for j in (i,i+1):r['by_index'][str(j)]=key;r['open'].remove(j)
    r['kinds'][key]=r['kinds'].get(key,0)+2;r['modules'].append(name);f.write_text(json.dumps(r))
if __name__=='__main__':check(int(sys.argv[1]))
