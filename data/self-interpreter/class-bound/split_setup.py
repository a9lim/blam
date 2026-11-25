from pathlib import Path
p=Path(__file__).resolve().parent/'probe.py'
s=p.read_text().replace('def main(w):','def main(w,profile=None):').replace('if c!=closed)','if c!=closed and (profile is None or c[:2]==profile))').replace('for fn in (f.count','if profile is not None and (f.K,f.JD)!=profile:continue\n        for fn in (f.count').replace("(P/f'probe{w}.json').write_text", "suffix='' if profile is None else '_%d_%d'%profile\n    (P/f'probe{w}{suffix}.json').write_text").replace("main(int(sys.argv[1]))","main(int(sys.argv[1]),tuple(map(int,sys.argv[2:])) or None)")
p.write_text(s)
