import sys, json, subprocess
d = json.load(open(sys.argv[1])); idx = [int(x) for x in sys.argv[2].split(',')]
B = int(sys.argv[3]); fuel = sys.argv[4]; tag = sys.argv[5]
cuts = sorted(d['cut'])
for i in idx:
    lb, s = cuts[i]
    out = f'{tag}_{i}.json'
    r = subprocess.run(['nice', 'python3', 'probe1.py', str(B), s, out, '--fuel', fuel],
                       capture_output=True, text=True, timeout=118)
    print(i, r.stdout.strip(), s, flush=True)
