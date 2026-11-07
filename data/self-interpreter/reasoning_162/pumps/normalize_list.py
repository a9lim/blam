from lambda_check import *

def one(t):
    if t[0]=='v':return None
    if t[0]=='l':
        u=one(t[1]);return None if u is None else ('l',u)
    if t[1][0]=='l':return beta(t[1][1],t[2])
    u=one(t[1])
    if u is not None:return ('a',u,t[2])
    u=one(t[2]);return None if u is None else ('a',t[1],u)

def count(t):return 1 if t[0]=='v' else 1+sum(count(x) for x in t[1:])
def enc(t):
    if t[0]=='v':return '1'*(t[1]+1)+'0'
    if t[0]=='l':return '00'+enc(t[1])
    return '01'+enc(t[1])+enc(t[2])

if __name__=='__main__':
    rr=list(rows());out=[];known={b for b,_,nf in rr if nf};start=time.monotonic()
    for bits,_,nf in rr:
        t=dec(bits);n=0
        for k in range(60):
            u=one(t)
            if u is None:break
            if count(u)>1500:break
            t=u;n+=1
        is_nf=normal(t);b=enc(t) if is_nf else bits
        out.append(dict(bits=bits,reduct=b,steps=n if is_nf else 0,normal=is_nf,group='normal' if nf else ('to-capped' if b in known else 'other-nf' if is_nf else 'non-normal')))
    r=dict(count=len(out),seconds=time.monotonic()-start,counts=dict(Counter(x['group'] for x in out)),unique=len(set(x['reduct'] for x in out)),rows=out)
    (HERE/'normalization.json').write_text(json.dumps(r)+'\n');print({k:v for k,v in r.items() if k!='rows'})
