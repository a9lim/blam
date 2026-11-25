from pathlib import Path
import signal,sys,subprocess,os,time,json,resource,ctypes,hashlib
P=Path(__file__).resolve().parent
repo=P.parents[2]
lib=ctypes.CDLL('/usr/lib/libproc.dylib',use_errno=True)
def rss(pid):
 buf=ctypes.create_string_buffer(256)
 if lib.proc_pid_rusage(pid,0,ctypes.byref(buf))<0:return 0
 return ctypes.c_uint64.from_buffer(buf,64).value
def run(name,build=False):
    lean=repo/'lean'
    tool=(Path.home()/'.elan/toolchains'/((lean/'lean-toolchain').read_text().strip().replace('/','--').replace(':','---'))/'bin/lean')
    dest=P/'proofs'
    cmd=[str(tool),'--root='+str(dest),'-j1','-M680']
    if build:cmd+=['-o',str(dest/(name+'.olean'))]
    f=dest/(name+'.lean')
    env={**os.environ,'LEAN_PATH':str(dest)+':'+str(lean/'.lake/build/lib/lean')}
    start=time.monotonic();peak=0
    with (dest/(name+'.log')).open('w') as fp:
        p=subprocess.Popen(cmd+[str(f)],cwd=lean,env=env,stdout=fp,stderr=subprocess.STDOUT)
        while p.poll() is None:
            peak=max(peak,rss(p.pid))
            if peak>945_000_000 or time.monotonic()-start>108:
                p.kill();p.wait();raise RuntimeError((name,peak))
            time.sleep(.015)
    log=(dest/(name+'.log')).read_text()
    if p.returncode or 'sorryAx' in log or 'uses `sorry`' in log:raise RuntimeError((name,log[-1200:]))
    if name.startswith('Slice'):
        for line in log.splitlines():
            if 'depends on axioms:' in line:assert set(line.split('depends on axioms: [')[1].rstrip(']').split(', '))<={'propext','Quot.sound','Classical.choice'}
        assert log.count('depends on axioms:')+log.count('does not depend on any axioms')==f.read_text().count('#print axioms')
    (dest/(name+'.resources.json')).write_text(json.dumps(dict(peak=peak,seconds=time.monotonic()-start,source_sha256=hashlib.sha256(f.read_bytes()).hexdigest(),code=p.returncode)))
if __name__=='__main__':run(sys.argv[1],len(sys.argv)>2)
