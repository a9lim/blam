import sys,subprocess,json,time
from pathlib import Path
H=Path(__file__).resolve().parent
fs=sorted(H.glob('FlowCases*.lean'));records=[]
for f in fs:
 p=subprocess.run([sys.executable,str(H/'run_limited.py'),f.name],capture_output=True,text=True)
 if p.returncode:
  print(p.stdout,p.stderr,(H/(f.stem+'.log')).read_text());raise SystemExit(1)
 assert 'sorryAx' not in (H/(f.stem+'.log')).read_text()
 records.append(json.loads((H/(f.stem+'.resources.json')).read_text()))
(H/'flow_checks.json').write_text(json.dumps(records,separators=(',',':'))+'\n')
print('checked',len(fs),'modules; max seconds',max(r['seconds'] for r in records),'max RSS',max(r['peak_rss_bytes'] for r in records))
