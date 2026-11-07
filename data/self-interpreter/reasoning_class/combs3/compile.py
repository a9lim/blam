import os, subprocess, time, resource
from pathlib import Path
resource.setrlimit(resource.RLIMIT_CPU,(115,115))
root=Path('/Users/a9lim/Work/blam')
env=os.environ.copy();env['LEAN_PATH']=str(root/'lean/.lake/build/lib/lean')
start=time.monotonic()
p=subprocess.Popen(['lean','-j2','-M','1800',str(root/'tmp/round4/combs3/Rootlet5.lean')],cwd=root/'lean',env=env,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
try:
 out=p.communicate(timeout=115)[0].decode()
except subprocess.TimeoutExpired:
 p.kill();out=p.communicate()[0].decode();out+='\nTIMEOUT\n'
elapsed=time.monotonic()-start
report=f'{out}\nexit={p.returncode} wall_seconds={elapsed:.3f} child_maxrss_bytes={resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss}\n'
(root/'tmp/round4/combs3/Rootlet5.log').write_text(report)
print(report)
