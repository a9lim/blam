import sys
sys.dont_write_bytecode=True
import minimum as ct
from collections import Counter
import time,signal,json,threading
signal.alarm(112);threading.Thread(target=ct.watchdog,daemon=True).start()
raw=sys.argv[1].split(':');cell=(int(raw[0]),)+tuple(raw[1:]);aa={};bb={};pp={};rows=Counter()
for _,(a,ka,b,kb,p,kp,ja),num in ct.blocks(cell[0],cell):
 aa[a,ka,ja]=ct.terms(a,2,ja)[ka];bb[b,kb]=ct.terms(b,3,0)[kb];pp[p,kp,1-ja]=ct.pending(p,1-ja)[kp];rows[ka[3]]+=num
print(dict(cell=cell,source_count=sum(rows.values()),by_A_head=dict(rows),A_count=sum(aa.values()),B_count=sum(bb.values()),pending_count=sum(pp.values()),seconds=time.monotonic()-ct.START))
