from table import *
import subprocess, sys
def step(script,*args):
 subprocess.run([sys.executable,'-B',str(P/(script+'.py')),*map(str,args)],check=True)
