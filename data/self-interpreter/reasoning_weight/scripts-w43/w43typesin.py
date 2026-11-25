from w43hard import *
def emit(t):
 if t[0]=='k':return 'V 100'
 if t[0]=='v':return f'V {t[1]}'
 return ('A ' if t[0]=='a' else 'L ')+' '.join(emit(x) for x in t[1:])
p=sources();ids=[7461,7741,7755,8935,9436,21043,21083,7735,18985];print(len(ids))
for i in ids:print(i,emit(ad.tup(p[str(i)]['source'])))
