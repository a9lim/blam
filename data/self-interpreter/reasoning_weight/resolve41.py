from target import *
def pick(R):
 return full(R) or target(R)
if __name__=='__main__':
 if 'preview' in sys.argv:
    r=json.loads((P/'cert41.json').read_text());e=json.loads((P/'probe41.json').read_text())['exceptions']
    for i in r['open']:
        h=pick(ad.tup(e[i]['source']))
        if not h or 'targeted' in h[0]: print(i,h[0] if h else 'open')
 else:apply(41,pick)
