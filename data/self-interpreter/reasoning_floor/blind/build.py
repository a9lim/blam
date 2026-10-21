from check import *

BASE = r'''
(\x. x x) (\x. (\p. \c.
  (\q. \s. s (\b. b (\unused \r. r q) c) (s s s))
  (\b. p (\a. b
    (c (\e \v. a (\d \r. d v (r e))))
    (p (\f. c (\e. a e (f e)))))))
  (x x))
'''

def knot(body):
    return r'(\x.x x) (\x.(\p.' + body + r')(x x))'

write('baseline165', BASE)
write('split_next', BASE.replace(r'p (\a. b', r'p (b (\a.').replace(
    r'(c (\e \v. a (\d \r. d v (r e))))',
    r'(c (\e \v. a (\d \r. d v (r e))))) (\a.').replace(
    r'(p (\f. c (\e. a e (f e)))))))',
    r'(p (\f. c (\e. a e (f e))))))))'))

# Make the continuation common after selecting a parser strategy.  On 00,
# use the already parsed expression as the value for an identity parser;
# on 01, recursively parse the second expression.
write('common_return', knot(r'''
\c. (\q. \s. s (\b. b (\unused \r. r q) c) (s s s))
(\b. p (\a. (b (\k. k a) p)
  (\f. c (b
    (\e \v. f (\d \r. d v (r e)))
    (\e. a e (f e))))))
'''))

# Opposite environment application convention.  Each raw variable stream
# becomes an environment query; the cell dispatches onto a value thunk or
# the previous environment and lets the stream supply its tail.
write('reversed_lookup', knot(r'''
\c. (\q. \s.
  s (\b. b (\unused \r. r q) (\r. c (\e. e r))) (s s s))
(\b. p (\a. b
  (c (\e \v. a (\r. r (\d. d (\unused. v) e))))
  (p (\f. c (\e. a e (f e))))))
'''))

# Fold the continuation outside both constructor alternatives.
write('thread_cont', knot(r'''
\c. (\q. \s. s (\b. b (\unused \r. r q) c) (s s s))
(\b. p (\a. b
  (\k. k (\e \v. a (\d \r. d v (r e))))
  (\k. p (\f. k (\e. a e (f e)))) c))
'''))

# Parser state is carried by the handler.  The incoming list gives it the
# first bit, remainder, and shared skip before it selects the operation.
write('handler_knot', r'''
(\h. \c \s. s (h h c) (s s s))
(\h \c \b. b
  (\unused \r. r (\b.
    (\p. p (\a. b
      (c (\e \v. a (\d \r. d v (r e))))
      (p (\f. c (\e. a e (f e))))))
    (\c \s. s (h h c) (s s s))))
  c)
''')

# Expose the second-tag operation as the recursive state.  The entry point
# exploits the fact that every closed BLC program starts in the zero arm.
write('next_knot', r'''
(\q. \c \s. s (\unused \r. r (q c)))
((\x.x x) (\x.(\q. \c \b.
  (\p. p (\a. b
    (c (\e \v. a (\d \r. d v (r e))))
    (p (\f. c (\e. a e (f e))))))
  (\c \s. s (\b. b (\unused \r. r (q c)) c) (s s s)))
  (x x)))
''')

def redexes(t, path=()):
    if t[0] == 'A' and t[1][0] == 'L':
        yield path
    if t[0] in ('A', 'L'):
        yield from redexes(t[1], path+(1,))
    if t[0] == 'A':
        yield from redexes(t[2], path+(2,))

def at(t,p):
    for i in p: t=t[i]
    return t

def replace(t,p,v):
    if not p:return v
    z=list(t); z[p[0]]=replace(z[p[0]],p[1:],v); return tuple(z)

base=compile_src(BASE)
for i,path in enumerate(redexes(base)):
    if not path:continue  # do not unroll the fixed point
    t=at(base,path)
    reduced=replace(base,path,lc.beta(t[1],t[2]))
    write(f'beta{i}',lc.show(reduced))
