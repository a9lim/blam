from w43split import *
def groups(s,limit):
 # Split the outer array at commas outside all nested lists and records.
 items=[];start=0;depth=0
 for j,ch in enumerate(s):
  if ch in '[⟨(':depth+=1
  elif ch in ']⟩)':depth-=1
  elif ch==',' and depth==0:items.append(s[start:j]);start=j+1
 items.append(s[start:]);assert depth==0
 return [items[j:j+limit] for j in range(0,len(items),limit)]
def rewrite(name):
 f=proofs/(name+'Data.lean');s=f.read_text();parts=[];inline=[]
 for l in s.splitlines():
  if ':= #[' not in l: inline.append(l);continue
  decl,raw=l.split(' := #[',1);assert raw.endswith(']')
  key=decl.split()[1];entries=groups(raw[:-1],48)
  if len(entries)<2:inline.append(l);continue
  chunks=[]
  for j,g in enumerate(entries):
   cn=key+str(j);mn=name+'Tbl'+cn
   c=f'import Blc.SelfintRegularCertificate\nnamespace Certgen.{name}\n'+decl.replace('def '+key,'def '+cn)+' := #['+','.join(g)+']\nend Certgen.'+name+'\n'
   (proofs/(mn+'.lean')).write_text(c);parts.append(mn);chunks.append(cn)
  inline.append(decl+' := '+' ++ '.join(chunks))
 f.write_text(''.join('import '+p+'\n' for p in parts)+'\n'.join(inline)+'\n')
 return parts
if __name__=='__main__':
 op,es=residual();ids=list(map(int,sys.argv[1:]));plans=[segments(i,es) for i in ids]
 tbl=[x for i in ids for x in rewrite(f'Slice43Regular{i}')]
 build(tbl,'largetable',True)
 for j in range(3):build([name for plan in plans for name in plan[j]],f'large{j}',j<2)
