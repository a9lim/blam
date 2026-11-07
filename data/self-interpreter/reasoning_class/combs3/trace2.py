import resource
resource.setrlimit(resource.RLIMIT_CPU,(110,110))
H='H'
def a(x,y):return (x,y)
def spine(t):
 s=[]
 while isinstance(t,tuple):s.append(t[1]);t=t[0]
 return t,s[::-1]
def app(t,s):
 for x in s:t=a(t,x)
 return t
names={H:'H','j':'j','c':'c'}
def name(t):
 if t in names:return names[t]
 x,y=t;nx,ny=name(x),name(y)
 n='t'+str(len(names));names[t]=n;print(n,'=',nx,ny)
 return n
A=a(H,H)
for label,t in [('474',a(A,A)),('492',a(a(H,A),H)),('506',a(a(A,H),H))]:
 print('\nSOURCE',label);t=app(t,['j','c'])
 for i in range(30):
  h,s=spine(t)
  print(i,h,[name(x) for x in s])
  if h!=H or len(s)<2:break
  x,y,*rs=s;t=app(x,[a(y,a(y,x))]+rs)
