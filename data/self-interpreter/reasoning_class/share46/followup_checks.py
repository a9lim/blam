"""Fixed capturing-helper and Delta repair probes; no source generation."""
import json
import time
import rd

def fp(t,env=()):
    if t[0]=='V': return ('b',env.index(t[1])) if t[1] in env else ('f',t[1])
    if t[0]=='L': return ('l',fp(t[2],(t[1],)+env))
    return ('a',fp(t[1],env),fp(t[2],env))

def same(a,b): return fp(rd.normalize(a))==fp(rd.normalize(b))

readers=[
 ('capturing_local',67,r'\s.((\g.s(g F)(g s))(\x u.x(\q.c)(x x u)))j'),
 ('capturing_external',70,r'(\g s.s(g F)(g s)j)(\x u.x(\q.c)(x x u))'),
 ('padded_dual_combination',54,r'\s.s(\b r.b I(c r))(s I(s s)j)'),
 ('captured_tail_baseline',52,r'\s.s(\b r.b r(\u.c r(r r u)))j'),
 ('K_repair',55,r'\s.s I(s(\q.c))(s K I(s s)j)'),
 ('reordered_K_repair',53,r'\s.s I(s(\q.c))(s K j(s s s))'),
 ('K_captured_return',49,r'\s.s I(K(s(\q.c)(s s s)))j'),
 ('shared_K',67,r'\s.((\k.s(F k)(k(s(\q.c)(s s s))))K)j'),
]
duals=[
 ('delta_original',34,r'\s.s(\x.x x) I(s s)j','j','N j'),
 ('K_repaired',33,r'\s.s K I(s s)j','j','N'),
 ('K_reordered',31,r'\s.s K j(s s s)','j','N'),
 ('padded_simplified',24,r'\s.s I(s s)j','r j','N'),
]
identities=[
 ('G_F',r'(\x u.x(\q.c)(x x u)) F',r'I'),
 ('G_I',r'(\x u.x(\q.c)(x x u)) I',r'\u.c'),
 ('G_K',r'(\x u.x(\q.c)(x x u)) K',r'\u q.c'),
 ('G_s',r'(\x u.x(\q.c)(x x u)) s',r'\u.s(\q.c)(s s u)'),
 ('padding_delta',r'(\f.f F s)(\x.x x)',r's'),
 ('padding_square',r'(\f.f F s)(\f.f F s)',r's s'),
 ('padding_dual',r'(\f.f F s)(\x.x x) I((\f.f F s)(\f.f F s))j',r's I(s s)j'),
]
start=time.monotonic()
rows=[]
canonical=r'\s.s I(\u.s(\q.c)(s s u))j'
for name,w,src in readers:
 ok,weights=rd.check(src,verbose=False)
 assert weights[0]==w,(name,weights,w)
 assert ok,name
 eq=same(src,canonical)
 if name.startswith('capturing_'): assert eq,name
 rows.append(dict(name=name,source=src,weight=weights,reader_n1_to_3=ok,normal_form_equals_canonical=eq))
 print(f'{name}: w={w}, reader n1..3 PASS, same NF as canonical={eq}')
for name,w,src,zero,one in duals:
 t=rd.parse(src); weights=rd.weight(t)
 assert weights[0]==w,(name,weights,w)
 tests=[]
 for label,arg,want in [('zero',rd.Z('r'),zero)]+[(f'unary{n}',rd.U(n,'N'),one if n==1 else 'N') for n in (1,2,3)]:
  result=rd.normalize(('A',t,arg))
  assert same(result,rd.parse(want)),(name,label,rd.show(result),want)
  tests.append(dict(input=label,result=rd.show(result)))
 rows.append(dict(name=name,source=src,weight=weights,outputs=tests))
 print(f'{name}: w={w}, exact predicted zero/n1/n2/n3 outputs PASS')
for name,left,right in identities:
 assert same(left,right),name
 print(f'{name}: exact beta normal-form equality PASS')
result=dict(elapsed_seconds=time.monotonic()-start,cases=rows,identities=identities)
with open('followup_checks.json','w') as f: json.dump(result,f,indent=2);f.write('\n')
print(f'Elapsed {result["elapsed_seconds"]:.4f}s; one process; no enumeration.')
