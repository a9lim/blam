from cert import *
from table import rows,closed
import re,hashlib,csv
def main():
    limit()
    idxfile=P/'exception-manifest.tsv'
    with idxfile.open('w') as fp:
        writer=csv.writer(fp,delimiter='\t')
        writer.writerow(['weight','exception_index','kind','original_ast_sha256','module','theorem'])
        for w in range(33,42):
            r=json.loads((P/f'cert{w}.json').read_text());es=json.loads((P/f'probe{w}.json').read_text())['exceptions'];seen=set()
            for name in r['modules']:
                f=P/'proofs'/f'{name}.lean';s=f.read_text();log=f.with_suffix('.log').read_text()
                local=dict(re.findall(r'^def (r[0-9]+|readerSource) : Term := (.*)$',s,re.M))
                if 'Regular' in name:offset=0
                elif 'Extra' in name:offset=0
                else:
                    batch=int(re.match(r'Slice(\d+)G',name)[1]);offset=batch-10000 if w==41 else 0
                for decl,arg in re.findall(r'^theorem (reject\d*) : ¬ Reader (\w+) :=',s,re.M):
                    i=int(name.split('Extra')[-1]) if 'Extra' in name else offset+int(decl[6:])
                    tree=ad.tup(es[i]['source']);assert ex.lean(tree)==local[arg],(w,i)
                    assert i not in seen;seen.add(i)
                    q=re.search(r"'([^']+\."+decl+r")' (depends on axioms: \[[^\]]*\]|does not depend on any axioms)",log)
                    assert q and 'sorry' not in q[2],(name,decl)
                    writer.writerow([w,i,r['by_index'][str(i)],hashlib.sha256(repr(tree).encode()).hexdigest(),name,q[1]])
            assert seen==set(range(len(es)))
    print('refutations',sum(1 for _ in idxfile.open())-1,'sha256',hashlib.sha256(idxfile.read_bytes()).hexdigest())
    print('next cells',sum(h[42]>0 for c,h in rows.items() if c!=closed))
if __name__=='__main__':main()
