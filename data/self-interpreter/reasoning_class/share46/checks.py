"""Ten hand-derived readers; no generated terms or search."""
import json
import time
import rd

CASES = [
    ('factory_self_boundary',45,False,r'\s. ((\h. s (h F) (h h)) (\x. x c)) j'),
    ('delta_c_boundary',45,False,r'\s. ((\h. s (h F) (h c)) (\x. x x)) j'),
    ('shared_delta',68,True,r'\s. ((\h. s (h F) (\u. s (\q.c) (h s u))) (\x. x x)) j'),
    ('fused_factory',69,True,r'\s. ((\h. s (h F) (\u. h s (s s u))) (\x. x (\q.c))) j'),
    ('external_factory',70,True,r'(\h s. s (h F) (\u. h s (s s u)) j) (\x. x (\q.c))'),
    ('external_factory_and_hole',71,True,r'((\h n s. s (h F) (\u. h s (s s u)) n) (\x. x (\q.c))) j'),
    ('one_lambda_factory',75,True,r'\s. ((\h. s (h F) (\u. s (h K) (s s u))) (\x. x c)) j'),
    ('stream_factory_square',43,False,r'\s. ((\h. s h (h c)) (\x. x (s s))) j'),
    ('stream_factory_identity',44,False,r'\s. ((\h. s h (h c)) (\x. x (s I))) j'),
    ('external_boundary',49,False,r'(\h s. s (h F) (h s) j) (\x. x c)'),
]

def fingerprint(t,env=()):
    if t[0]=='V': return ('b',env.index(t[1])) if t[1] in env else ('f',t[1])
    if t[0]=='L': return ('l',fingerprint(t[2],(t[1],)+env))
    return ('a',fingerprint(t[1],env),fingerprint(t[2],env))

start=time.monotonic()
canonical=rd.normalize(r'\s. s I (\u. s (\q.c) (s s u)) j')
rows=[]
for name,expected_w,expected_ok,src in CASES:
    ok,weight=rd.check(src,verbose=False)
    assert weight[0]==expected_w,(name,weight,expected_w)
    assert ok==expected_ok,(name,ok,expected_ok)
    same=fingerprint(rd.normalize(src))==fingerprint(canonical)
    if expected_ok: assert same,name
    rows.append(dict(name=name,source=src,weight=weight,reader_n1_to_3=ok,
                     normal_form_equals_canonical=same))
    print(f'{name}: w={weight[0]} n1..3={ok} same_normal_form={same}')

for name,_,_,src in [CASES[0],CASES[1],CASES[7],CASES[8]]:
    term=rd.parse(src)
    print(name,'zero:',rd.show(rd.normalize(('A',term,rd.Z('r')))))
    print(name,'unary1:',rd.show(rd.normalize(('A',term,rd.U(1,'N')))))

result=dict(elapsed_seconds=time.monotonic()-start,cases=rows)
with open('checks.json','w') as f: json.dump(result,f,indent=2); f.write('\n')
print(f'Elapsed {result["elapsed_seconds"]:.4f}s; one process, no enumeration.')
