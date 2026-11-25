from target import *
sys.path.insert(0,str(A/'certgen'))
import regular,portable
def convert(t):
 return (t[0].upper() if t[0]!='k' else 'C',*(convert(x) if isinstance(x,tuple) else x for x in t[1:]))
def search(R):
 h,as_=fam.flat(d.subst(R,0,d.Kc('c')));a=as_[0];core=d.A(a,a)
 ts=[(core,'core'),(d.A(d.subst(R,0,d.Kc('c')),d.Z()),'zero')]
 for t,name in ts:
  for k,mode in ((0,'site'),(1,'lambda'),(1,'site'),(1,'arg'),(2,'site'),(2,'arg'),(2,'argenv')):
   try:z=regular.discover(convert(t),k,cap=11000,seconds=1,mode=mode)
   except regular.Limit:continue
   if z['ok']:
    cert=portable.portable(z);return name,k,mode,len(cert['states']),cert
def main():
 es=json.loads((P/'probe41.json').read_text())['exceptions']
 for i in (2795,2799):
    hit=search(ad.tup(es[i]['source']));print(i,hit[:4] if hit else None,flush=True)
    if hit:(P/f'reg{i}.json').write_text(json.dumps(hit))
if __name__=='__main__':limit();main()
