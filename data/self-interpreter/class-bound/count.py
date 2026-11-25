from pathlib import Path
import sys,os,signal,time,resource,threading,pickle,collections,json
P=Path(__file__).resolve().parent
sys.dont_write_bytecode=True
sys.path.insert(0,str(P/'archive/simplify'))
from coefficient import multiplicity,f
def limit():
    signal.alarm(110)
    def monitor():
        while True:
            if resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>905_000_000:os._exit(93)
            time.sleep(.03)
    threading.Thread(target=monitor,daemon=True).start()
def main():
    limit()
    k,d=map(int,sys.argv[1:])
    f.K,f.JD=k,d
    hist=collections.defaultdict(collections.Counter)
    files={}
    for key,n in f.roots():
        cell=f.cell(key)
        if cell[1]!='x' and not(cell[1]=='lambda' and cell[2]==0):continue
        m=multiplicity(key,n)
        if not m:continue
        L,T,b,a,cs,bf,af,t=key
        w=2*L+4*sum(f.leaves(s) for s in (b,a,cs))-4+T+4*d
        hist[str(cell)][w]+=m
        if w not in files:files[w]=(P/f'blocks_{k}_{d}_{w}.pkl').open('wb')
        pickle.dump((key,n,m),files[w])
    for fp in files.values():fp.close()
    (P/f'hist_{k}_{d}.json').write_text(json.dumps(hist,indent=2))
    print(k,d,len(hist),sum(sum(h.values()) for h in hist.values()),resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
if __name__=='__main__':main()
