from pathlib import Path
import os
import sys
import time
HERE = Path(__file__).resolve().parent
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter')
from battery import compile_lam, enc, check, bitlist, normalize, FALSE
from merges import INT165

sources = {
    'uni186_skip_next_Kparser': r'(\e.e (\v.v (\b.e))) (' + INT165.replace('(list list list)', '(list list next)') + ')',
    'uni188_skip_next_parser_parser': r'(\e.e (\v.v (e e))) (' + INT165.replace('(list list list)', '(list list next)') + ')',
}
for name, src in sources.items():
    (HERE / (name + '.lam')).write_text(src + '\n')
    E = compile_lam(src)
    (HERE / (name + '.blc')).write_text(enc(E) + '\n')
    t0 = time.monotonic()
    ok, skip, bad = check(E, uni=True, max_bits=18, threads=2)
    print(f'{len(enc(E))} bits ok={ok} skip={skip} fail={len(bad)} {name}.lam seconds={time.monotonic()-t0:.2f}', flush=True)
    for p, v in bad[:5]: print(' ', p, v, flush=True)
    for code in ['10','110','00110','011010','01101010','000011110', '0101100000110000010']:
        got = normalize(enc(('A', E, bitlist(code,FALSE))), 1 << 16)
        print(f' strict-filter code={code} nf={got if got is not None else "CAPPED"}', flush=True)
