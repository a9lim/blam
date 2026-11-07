import sys; sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
EX = {
 '162': r'\s. s I (\u. s (\q. c) (s s u)) j',
 '47':  r'\s. s I (\u. s (\q. c) (s s s)) j',
 '164': r'\s. s (\b. b F c) (s I (s s) j)',
 'h165': r'(\n s. s (\b. b (\u r. r n) c) (s s s)) j',
 'R59': r'\s. ((\a t. t a) j) (s I (\u. s (\q.c) (s s u)))',
 'R84': r'\s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k. k a) (t t)) j)',
 'R104': r'\s. (\u. (\x. s (\b t. b (x s) x)) (s (\b t. b (\a q. t u) (c t)) (s s s))) j',
}
if __name__ == '__main__':
    for k,v in EX.items():
        print(k, rd.check(v, nmax=6, verbose=False))
