#!/usr/bin/env python3
"""Audit six fixed designs. No candidate generation or hole search."""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import hashlib
import json
import os
import re
import shutil
import subprocess
import tempfile
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
os.environ['PYTHONDONTWRITEBYTECODE'] = '1'
os.environ['RAYON_NUM_THREADS'] = '2'
os.environ['TMPDIR'] = str(HERE)
tempfile.tempdir = str(HERE)
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery
import lc

FROZEN = HERE / 'blam.frozen'
if not FROZEN.exists():
    shutil.copyfile(ROOT / 'target/release/blam', FROZEN)
    FROZEN.chmod(0o755)
battery.BLAM = str(FROZEN)

def divergent_suffixes(term):
    sources = {
        'Omega': r'(\x.x x) (\x.x x)',
        'lambda_Omega': r'\a.(\x.x x) (\x.x x)',
        'Omega_Omega': r'((\x.x x) (\x.x x)) ((\x.x x) (\x.x x))',
    }
    rows = []
    for name, source in sources.items():
        src = battery.compile_lam(source)
        probe = ('L', ('A', ('A', battery.shift(term, 1), battery.FALSE),
                           battery.bitlist(battery.enc(src), ('V', 0))))
        normal = battery.normalize(battery.enc(probe), 1 << 18)
        rows.append(dict(source=name, normal_form=normal, exact_suffix=normal == '0010'))
        assert normal == '0010', rows[-1]
    return rows

def witness(term, source):
    src = battery.compile_lam(source)
    got = ('L', ('L', ('A', ('A', battery.shift(term, 2), ('V', 1)),
                              battery.bitlist(battery.enc(src), ('V', 0)))))
    want = ('L', ('L', ('A', ('A', ('V', 1), ('L', battery.shift(src, 3))), ('V', 0))))
    actual_nf = battery.normalize(battery.enc(got), 1 << 16)
    wanted_nf = battery.normalize(battery.enc(want), 1 << 16)
    return dict(source=source, source_bits=battery.enc(src),
                got=actual_nf, want=wanted_nf,
                got_named=lc.show(lc.decode(actual_nf)[0]) if actual_nf else None,
                want_named=lc.show(lc.decode(wanted_nf)[0]) if wanted_nf else None,
                unequal_normal_forms=actual_nf is not None and wanted_nf is not None
                                      and actual_nf != wanted_nf)

def check(name):
    started = time.monotonic()
    path = HERE / (name + '.lam')
    term = battery.compile_lam(path.read_text())
    wire = battery.enc(term)
    ok, skip, bad = battery.check(term, threads=2)
    line = f'{len(wire)} bits  ok={ok} skip={skip} fail={len(bad)}  {path.name}'
    print(line, flush=True)
    row = dict(name=name, as_written_bits=len(wire), battery=line,
               first_failures=bad[:8], battery_seconds=round(time.monotonic()-started, 3),
               polish=[])
    if bad:
        row['witnesses'] = [witness(term, source)
                            for source in [r'\x.x', r'\x\y.y', r'\x\y.x']]
    else:
        row['divergent_suffixes'] = divergent_suffixes(term)
        configs = [['--max-cuts', '3'], ['--no-inline', '--max-cuts', '2']] \
            if len(wire) <= 175 else [['--max-cuts', '2']]
        for i, flags in enumerate(configs):
            begin = time.monotonic()
            cmd = [str(FROZEN), 'golf', 'letopt', '--bits', wire,
                   '--report-le', '1000', '--threads', '2', *flags]
            try:
                run = subprocess.run(cmd, capture_output=True, text=True, timeout=45)
                log = run.stdout + run.stderr
                status = run.returncode
                if 'inlining the lets does not finish' in log and '--no-inline' not in flags:
                    configs.append(['--no-inline', '--max-cuts', '2'])
            except subprocess.TimeoutExpired:
                log = 'TIMEOUT after 45 seconds; no minimum claimed.\n'
                status = 'timeout'
            (HERE / f'{name}.letopt{i}.log').write_text(log)
            match = re.search(r'smallest rendering over .*?: (\d+) bits', log)
            best = re.search(r'best (\d+) ([01]+)', log)
            item = dict(flags=flags, status=status, seconds=round(time.monotonic()-begin, 3),
                        minimum=int(match[1]) if match else None)
            if best:
                optimized, end = lc.decode(best[2])
                assert end == len(best[2]) == int(best[1])
                optname = f'{name}.polished{i}'
                (HERE / (optname + '.blc')).write_text(best[2]+'\n')
                (HERE / (optname + '.lam')).write_text(lc.show(optimized)+'\n')
                if best[2] == wire:
                    a, b, failures = ok, skip, bad
                    item['same_wire_as_input'] = True
                else:
                    a, b, failures = battery.check(optimized, threads=2)
                item['battery'] = f'{best[1]} bits  ok={a} skip={b} fail={len(failures)}  {optname}.blc'
                item['wire_file'] = optname + '.blc'
                assert not failures, failures[:5]
            print(json.dumps(item), flush=True)
            row['polish'].append(item)
    row['total_seconds'] = round(time.monotonic()-started, 3)
    (HERE / f'{name}.checks.json').write_text(json.dumps(row, indent=2)+'\n')
    return row

if __name__ == '__main__':
    metadata = dict(frozen_binary_sha256=hashlib.sha256(FROZEN.read_bytes()).hexdigest(),
                    workers=2, per_letopt_timeout_seconds=45,
                    candidate_enumeration=False, let_structure_optimization=True)
    (HERE / 'runtime.json').write_text(json.dumps(metadata, indent=2)+'\n')
    for name in sys.argv[1:]:
        check(name.removesuffix('.lam'))
