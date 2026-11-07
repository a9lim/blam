"""Fixed follow-up on the nine initial size-39 residuals, <=105s total."""
import sys
sys.dont_write_bytecode=True
import json,time,signal
from size39 import HERE,timeout
from size38_follow import probe
signal.signal(signal.SIGALRM,timeout)
signal.alarm(105)
out=[];start=time.monotonic()
for part in ['literal','four','five']:
    data=json.loads((HERE/f'size39-{part}.json').read_text())
    for row in data['rows']:
        if not row['kind'].startswith('unresolved'):continue
        result=probe(row);result['part']=part;out.append(result)
        print(part,row['id'],result['kind'],result.get('steps',''),flush=True)
(HERE/'size39-follow.json').write_text(json.dumps(out,indent=2)+'\n')
print('seconds',time.monotonic()-start)
