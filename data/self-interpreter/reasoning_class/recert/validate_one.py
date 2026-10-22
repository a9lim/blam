import sys,json,hashlib,time,resource
from pathlib import Path
H=Path(__file__).resolve().parent;sys.path.insert(0,str(H.parent/'certgen'))
from flow_probe import cert
from aam import compile_term
from portable import check
label=sys.argv[1];r=next(x for x in json.loads((H/'inventory.json').read_text()) if x['label']==label)
p=H/(label+'.certificate.json');c=json.loads(p.read_text());start=time.monotonic()
assert check(c)
t=('A',cert.parse_show(r['source']),cert.law_io(0)[0]);assert json.loads(json.dumps(compile_term(t)))==c['nodes']
assert len(c['states'])<=100000
out=dict(label=label,valid=True,source_matches=True,states=len(c['states']),sha256=hashlib.sha256(p.read_bytes()).hexdigest(),seconds=time.monotonic()-start,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/(label+'.validation.json')).write_text(json.dumps(out,indent=2)+'\n')
