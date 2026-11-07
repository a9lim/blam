from flow_probe import inputs,cert
from aam import compile_term
import sys,json

def run(t,cap=20000):
    ns=compile_term(t);cl=(0,());stack=[];hist=[];mx=0; beta=0
    for step in range(cap):
        p,e=cl;n=ns[p]
        if len(hist)<80:hist.append([p,len(stack)])
        if n[0]=='C':return dict(stop=n,steps=step,beta=beta,stack=len(stack),maxstack=mx,history=hist)
        if n[0]=='V':cl=e[n[1]]
        elif n[0]=='A':stack.append((n[2],e));cl=(n[1],e);mx=max(mx,len(stack))
        elif not stack:return dict(stop=n,steps=step,beta=beta,stack=0,maxstack=mx,history=hist)
        else:cl=(n[1],(stack.pop(),)+e);beta+=1
    return dict(stop='cap',steps=cap,beta=beta,stack=len(stack),maxstack=mx,history=hist)
if __name__=='__main__':
    name=sys.argv[1];s=dict(inputs())[name]
    print(json.dumps(run(('A',cert.parse_show(s),cert.law_io(0)[0]))))
