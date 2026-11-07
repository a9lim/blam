"""Expose finite repeated-redex evidence in the five reported engine divergers.
The imitation is diagnostic, not a trusted divergence checker.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,time
from functools import lru_cache
from exact_probe import A,L,V,lc,invoke,parse,occ,sz,oracle,HERE

BOT=('V',1000000)
@lru_cache(maxsize=10000)
def simplify(t):
    if t[0]=='V':return t
    if t[0]=='L':return L(simplify(t[1]))
    f=simplify(t[1]);a=t[2]
    if f[0]=='L' and (a[0]=='V' or occ(f[1])<=1):return simplify(lc.beta(f,a))
    return A(f,simplify(a))

@lru_cache(maxsize=10000)
def bot_free(t,d=0):
    if t[0]=='V':return BOT if t[1]>=d else t
    if t[0]=='L':return L(bot_free(t[1],d+1))
    return A(bot_free(t[1],d),bot_free(t[2],d))

class Hit(Exception):pass
class Cap(Exception):pass

def probe(idx,row):
    e,_=lc.decode(row['wire']);q=invoke(e,parse('\\x.x'))[1][1]
    count=0;start=time.monotonic();events=[]
    def nf(t,weak,seen):
        nonlocal count
        count+=1
        if count>4000 or sz(t)>100000 or time.monotonic()-start>8:raise Cap()
        if t[0]=='L':return t if weak else L(nf(t[1],False,seen))
        if t[0]=='V':return t
        sub=seen if weak else {}
        f=nf(t[1],True,sub);a=simplify(t[2]);ab=A(f,a);r=bot_free(ab)
        if (which:=oracle(ab)):
            raise Hit(dict(kind=which,term=lc.show(ab),term_bits=lc.enc(ab)))
        if r[1] in seen:
            raise Hit(dict(kind='function_repeat',old=seen[r[1]],current=lc.show(ab),current_bits=lc.enc(ab)))
        if f[0]=='L':
            if r in seen:raise Hit(dict(kind='redex_repeat',old=seen[r],current=lc.show(ab),current_bits=lc.enc(ab)))
            news=seen.copy();news[r]=dict(event=len(events),term=lc.show(ab),bits=lc.enc(ab))
            events.append(dict(term=lc.show(ab),bits=lc.enc(ab)))
            return nf(lc.beta(f,a),weak,news)
        if weak:return ab
        news=seen.copy();news[r]=dict(event=len(events),term=lc.show(ab),bits=lc.enc(ab))
        return A(nf(f,False,news),nf(a,False,news))
    try:
        final=nf(q,False,{})
        result=dict(id=idx,kind='finished',nf=lc.show(final))
    except Hit as ex:result=dict(id=idx,**ex.args[0],events=events)
    except (Cap,RecursionError):result=dict(id=idx,kind='cap',events=len(events))
    result['calls']=count;result['seconds']=round(time.monotonic()-start,3)
    print(idx,result['kind'],'calls',count,'time',result['seconds'])
    if result['kind'] not in ('cap','finished'):
        print('old',result.get('old',{}).get('term','')[:500])
        print('current',result.get('current',result.get('term',''))[:500])
    return result

if __name__=='__main__':
    rows=json.loads((HERE.parent/'floor/four_lambda.json').read_text())
    ids=[int(x) for x in sys.argv[1:]] or [454,466,467,478,479]
    out=[probe(i,rows[i]) for i in ids]
    (HERE/'history_probe.json').write_text(json.dumps(out,indent=2)+'\n')
