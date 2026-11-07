import sys
from fullchain import *
tot = 0
for k in range(1, 8):
    for t in range(1, 8):
        budget = W - 8 - 4*k - 4*t
        if budget < 2*k + 7: continue
        c = sum(1 for _ in instances(k, t, budget)); tot += c
        print(k, t, budget, c, flush=True)
print('total', tot)
