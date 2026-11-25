from w45run import *
for name in ('Poly','Indexed','FlowCheck'):
 source=(proofs/('Slice44'+name+'.lean')).read_text()
 (proofs/('Slice45'+name+'.lean')).write_text(source.replace('Slice44','Slice45'))
path=P/'w44law.py'
(P/'w45law.py').write_text(path.read_text().replace('44','45'))
