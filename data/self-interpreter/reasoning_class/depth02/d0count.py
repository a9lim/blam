# growth of the filtered d=0 family (gen3b, own frame), app-rooted, by weight cap; and its (d)-subfamily
import sys, time, gen3b
from gen import head
def jparent_fun(t):
    # function part of j's parent application (j at depth 0)
    while True:
        if t[0] != 'a': return None
        if t[2] == ('k', 'j'): return t[1]
        t = t[1] if gen3b.has_j(t[1]) else t[2]
def _main():
  global n, nd
  W = int(sys.argv[1]); t0 = time.time(); n = 0; nd = 0
  for f in range(1, 8):
      for V in range(f + 3, 14):
          for L in range(2, 20):
              for X in range(0, 40):
                  if 2*L + 4*V - 4 + X > W: break
                  for t in gen3b.stream_root(X, L, V, f, 0, 'app'):
                      n += 1
                      fp = jparent_fun(t)
                      if fp is not None and fp[0] == 'a': nd += 1
  print(f'W<={W}: d=0 app filtered {n}, case (d) {nd}, {time.time()-t0:.1f}s')
  
if __name__ == "__main__": _main()
