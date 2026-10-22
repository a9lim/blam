#!/usr/bin/env python3
"""Full normal-order traces for explicit terms; retain lambda source origins.
No search. Inputs/outputs use the coord rd AST; labelled AST adds a fourth
field to lambdas only. Each beta event verifies the exact j-count balance.
"""
import sys
sys.dont_write_bytecode = True
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd

def label(t, path='R'):
    if t[0] == 'V': return t
    if t[0] == 'L': return ('L', t[1], label(t[2], path+'.b'), path)
    return ('A', label(t[1], path+'.f'), label(t[2], path+'.a'))

def strip(t):
    if t[0] == 'V': return t
    if t[0] == 'L': return ('L', t[1], strip(t[2]))
    return ('A', strip(t[1]), strip(t[2]))

def cons(b, r, origin):
    return ('L','f',('A',('A',('V','f'),b),r),origin)

def unary(n):
    t = cons(label(rd.K, 'K[0]'), ('V','N'), 'cell[0]')
    for k in range(1,n+1):
        t = cons(label(rd.F, f'F[{k}]'), t, f'cell[{k}]')
    return t

def count(t, x='j'):
    if t[0] == 'V': return int(t[1] == x)
    if t[0] == 'L': return 0 if t[1] == x else count(t[2],x)
    return count(t[1],x)+count(t[2],x)

def fv(t):
    if t[0] == 'V': return {t[1]}
    if t[0] == 'L': return fv(t[2])-{t[1]}
    return fv(t[1]) | fv(t[2])

fresh_count = 0
def sub(t,x,a):
    global fresh_count
    if t[0] == 'V': return a if t[1] == x else t
    if t[0] == 'A': return ('A',sub(t[1],x,a),sub(t[2],x,a))
    if t[1] == x: return t
    name, body = t[1], t[2]
    if name in fv(a):
        fresh_count += 1
        new = name+'#trace'+str(fresh_count)
        body = sub(body,name,('V',new)); name = new
    return ('L',name,sub(body,x,a),t[3])

def step(t):
    if t[0] == 'V': return None
    if t[0] == 'L':
        v = step(t[2])
        return None if v is None else (('L',t[1],v[0],t[3]),v[1])
    f,a=t[1:]
    if f[0] == 'L':
        m, ja, jb = count(f[2],f[1]),count(a),count(f[2])
        out=sub(f[2],f[1],a)
        assert count(out) == jb+m*ja
        event = {'origin':f[3], 'binder':f[1], 'multiplicity':m,
                 'j_in_argument':ja, 'j_delta':(m-1)*ja}
        return out,event
    v=step(f)
    if v is not None: return ('A',v[0],a),v[1]
    v=step(a)
    return None if v is None else (('A',f,v[0]),v[1])

CASES = {
 'mixed58':r'\s. s (\b t n. b (t n) (c t (t t n))) j',
 'F52':r'\s. s ((\n b. b (\u t. t n) c) j) (s s s)',
 '162':r'\s. s I (\u. s (\q. c) (s s u)) j',
 '47':r'\s. s I (\u. s (\q. c) (s s s)) j',
 '165':r'(\n s. s (\b. b (\u t. t n) c) (s s s)) j',
 'mixed50':r'(\n s. s (\b. b (\u t. t n) c) (s s n)) j',
 'local_absorber':r'\s. s (\b. b I c) (s (\b t. b I (\u. t t t)) j)',
 'sourceF':r'\s. s I (s (\q. c)) (s (\b t. b K F) j (s s s))',
 'mixed67':r'\s. (\n. s K (s F n) (s (\q. c) (s s n))) j',
}

if __name__ == '__main__':
    for name,src in CASES.items():
        for n in (1,2,8):
            t=('A',label(rd.parse(src)),unary(n))
            log=[]
            for k in range(2000):
                v=step(t)
                if v is None: break
                t,e=v
                if e['j_in_argument']: log.append(e)
            else: raise RuntimeError('step cap')
            expected=rd.parse('c')
            expected=('A',('A',expected,rd.U(n-1,'N')),('V','N'))
            assert rd.alpha_eq(strip(t),expected)
            print(name,'n='+str(n),'weight='+str(rd.weight(rd.parse(src))[0]),
                  'steps='+str(k))
            for e in log: print(' ',e)
