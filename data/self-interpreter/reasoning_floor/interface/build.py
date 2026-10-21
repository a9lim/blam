"""Hand-derived joint protocol variants; no term search."""
from pathlib import Path
import sys
import re
ROOT = Path(__file__).resolve().parents[3]
LANE = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
sys.path.insert(0, str(ROOT / 'tools'))
import battery

def fix(body):
    return rf'(\x. x x) (\x. (\p. {body}) (x x))'

def let(name, val, body):
    return rf'(\{name}. {body}) ({val})'

va = r'(\e a. f (\b r. b a (r e)))'
lift = r'(\e. f e (g e))'
app = rf'(p (\g. c {lift}))'
abs = rf'(c {va})'

candidates = {}
# The dropped copy is consumed by the first-parse continuation after its rest.
j = rf'\d. p (\f r q. d {abs} {app} r)'
body = let('j', j, r'\s. s (\b. b (\r. r j) c) (s s s)')
candidates['delayed_drop'] = fix(r'\c. '+body)

# NEXT is the third operand, while returns carry K(rest).
# A variable's arm consumes that operand without using it to force the rest.
# APP forces the rest once at recursive entry; ABS forwards it unchanged.
jt = rf'\d. p (\f. d {abs} (\t. p (\g. c {lift}) (t t)))'
body = rf'\c s. s (\b r. b r (\u. c r (r r))) ({jt})'
p_thunk = fix(body)
candidates['third_operand_thunk'] = let('p0', p_thunk, r'\c. p0 (\v t. c v (t t))')

# The trailing zero-arm operand is K(q). It forces a returned tail thunk.
jt2 = rf'\d. p (\f t q. d (c {va} t) (p (\g. c {lift}) (t q)))'
body = let('j', jt2, r'\s. s (\b. b (\r. r j) c) (s s)')
p_thunk2 = fix(r'\c. '+body)
candidates['delayed_drop_thunk'] = let('p0', p_thunk2, r'\c. p0 (\v t. c v (t t))')

# Directly hand the rest thunk to a parser whose input protocol is thunked.
# First parse takes K(raw tail); root uses an explicit K(input) adapter.
jt3 = rf'\d r. p (\f. d {abs} {app}) (\u. r)'
body3 = let('j', jt3, r'\s. s (\b. b (\r u. r j) c) (s s)')
body3 = rf'\c t. ({body3}) (t t)'
p_thunk3 = fix(body3)
candidates['thunk_input_output'] = let('p0', p_thunk3,
    r'\c s. p0 (\v t. c v (t t)) (\u. s)')

# Change the value/environment interface as well as the delayed-drop handoff.
# Environment functions consume a complete raw unary tail rather than its fields.
va_fun = r'(\e a. f (\r. r (\b. b (\u. a) e)))'
app_fun = rf'(p (\g. c {lift}))'
jf = rf'\d. p (\f r q. d (c {va_fun}) {app_fun} r)'
bodyf = let('j', jf, r'\s. s (\b. b (\r. r j) (\v. c (\e. e v))) (s s s)')
candidates['delayed_drop_function_env'] = fix(r'\c. '+bodyf)

# Extra operand carries a thunked tail; root is entered directly through NEXT.
# The fixed point produces NEXT. P is private and returns thunked tails.
# N c d r = P (lambda f. d (c VA) (force-then-P kapp)) r.
# E c s = s (lambda zero q. q (N (lambda v t.c v (t t)))).
p_private = r'\k s. s (\b r. b r (\u. k r (r r))) (n k)'
next_body = rf'\c d. p (\f. d (c {va}) (\t. p (\g. c {lift}) (t t)))'
ngen = rf'(\x. x x) (\x. (\n. {let("p", p_private, next_body)}) (x x))'
candidates['root_next_thunk'] = let('n0', ngen,
    r'\c s. s (\zero q. q (n0 (\v t. c v (t t))))')

for name, src in candidates.items():
    src = re.sub(r'\\([a-z0-9 ]+)\.', lambda m: ''.join('\\'+x for x in m[1].split())+'.', src)
    path = LANE / (name+'.lam')
    path.write_text(src+'\n')
    t = battery.compile_lam(src)
    bits = battery.enc(t)
    path.with_suffix('.blc').write_text(bits+'\n')
    print(name, len(bits), flush=True)
