from skel import *
fr = ['bit', 's', 'c']
sk = {'name': 'famb p0 m3 q1', 'q': 1, 'overhead': 22, 'zbound': 10, 'tmax': 9,
      'holes': {'A1': {'frame': fr, 'jbase': 4, 'max': 19}, 'A2': {'frame': fr, 'jbase': 4, 'max': 19},
                'A3': {'frame': fr, 'jbase': 4, 'max': 19}},
      'zhead': 'A1', 'zargs': ['A3', 'r', 'T1'], 'uhead': 'A2', 'uargs': ['A3', 'r', 'T1']}
run(sk)
