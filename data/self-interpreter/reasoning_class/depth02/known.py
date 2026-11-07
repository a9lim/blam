import rowgen, conv
for src in [r'\s. s I (\u. s (\q. c) (s s u)) j',
            r'\s. s (\b r. b (r j) (c r (r r r)))',
            r'\s. s (\b. b (\u r. r j) c) (s s s)',
            r'(\n s. s (\b. b (\u r. r n) c) (s s s)) j',
            r'\s. s K (\t. t j) (s (\q.c)) (s s s)']:
    print(rowgen.check(conv.db(src)), conv.sig(src), src)
