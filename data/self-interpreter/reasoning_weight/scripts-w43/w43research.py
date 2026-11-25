from w43run import *
import shlex
def main():
 # Use the driver only to print its plan. Run each build process by its own exact PID.
 z=subprocess.check_output(['clang++','-###','-std=c++17','-O2','w43types.cpp','-o','w43/types'],stderr=subprocess.STDOUT,text=True)
 cmds=[shlex.split(l) for l in z.splitlines() if l.startswith(' "')]
 for j,c in enumerate(cmds):supervise([(f'buildtypes{j}',c,680000000,None)],f'buildtypes{j}')
 def cmd(n,b):
  return ('types'+str(n),[sys.executable,'-B','w43research.py','run',str(n),str(b)],905000000,None)
 supervise([cmd(4,65536),cmd(5,450000),cmd(6,270000)],'types')
if __name__=='__main__':
 if len(sys.argv)>1:
  fd=os.open(D/'typescases',os.O_RDONLY);os.dup2(fd,0);os.close(fd)
  os.execv(str(D/'types'),['types',*sys.argv[2:]])
 else:main()
