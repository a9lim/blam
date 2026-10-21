#!/usr/bin/env python3
"""Two derived reset knots plus two explicit controls; no candidate sweep."""
from checks import *

ABS = r'(cont (\args.\arg.exp (\zx.\zy.zx arg (zy args))))'
APP = r'(intL (\exp2.cont (\args.exp args (exp2 args))))'


def body(skip):
    return rf'''\cont.
      (\next.\list.
        list (\bit0.bit0 (\unused.\r.r next) cont) (list list {skip}))
      (\bit1.intL (\exp.bit1 {ABS} {APP}))'''


def make_reset(skip, driver):
    return rf'''-- Reader reset bootstrap; source compiled without optimization.
(\w.
  w (\x.(\intL.{body(skip)}) (w x)))
({driver})
'''


def suffix_probe(term, program):
    # Free variable 0 is the rigid suffix. The continuation discards the
    # semantic value, so even a divergent source must return that suffix.
    cont = parse(r'\v.\r.r')
    probe = ('A', ('A', term, cont), lc.bitlist(lc.enc(program), ('V', 0)))
    got = battery.normalize(lc.enc(('L', probe)), 1 << 20)
    assert got == '0010', (got, '0010')


def run():
    files = {
        'reference165.lam': (ROOT / 'data/self-interpreter/machines/int165.lam').read_text(),
        'reference192.lam': (ROOT / 'data/self-interpreter/reasoning_165/knot/reader_knot.lam').read_text(),
        'reset_cont192.lam': make_reset('cont', r'\x.x (\u.u) x (\a.\b.b) x'),
        'reset_generator192.lam': make_reset('x', r'\x.x x x (\a.\b.b) x'),
    }
    records = []
    omega = parse(r'(\x.x x) (\x.x x)')
    for name, src in files.items():
        path = HERE / name
        path.write_text(src)
        record = compile_and_check(path)
        term = parse(src)
        suffix_probe(term, omega)
        suffix_probe(term, ('L', omega))
        record['divergent_suffix_probes'] = ['Omega: ok', 'lambda.Omega: ok']
        records.append(record)
    (HERE / 'battery.json').write_text(json.dumps(records, indent=2)+'\n')


if __name__ == '__main__':
    run()
