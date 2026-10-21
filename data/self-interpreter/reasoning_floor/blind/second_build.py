from check import *

def knot(body):
    return r'(\x.x x) (\x.(\p.' + body + r')(x x))'

write('borrow_zero', knot(r'''
\c. (\q. \s. s (\b. b (b (\r. r q)) c) (s s s))
(\b. p (\a. b
  (c (\e \v. a (\d \r. d v (r e))))
  (p (\f. c (\e. a e (f e))))))
'''))

write('selected_operator', knot(r'''
\c. (\q. \s. s (\b. b (\unused \r. r q) c) (s s s))
(\b. p (\a. b c p (\f. b
  (\v. a (\d \r. d v (r f)))
  (c (\e. a e (f e))))))
'''))

write('parser_scope', r'''
(\x.x x) (\x. \c.
  (\q. \s. s (\b. b (\unused \r. r q) c) (s s s))
  ((\p. \b. p (\a. b
    (c (\e \v. a (\d \r. d v (r e))))
    (p (\f. c (\e. a e (f e))))))
  (x x)))
''')

write('parser_scope_under_tag', r'''
(\x.x x) (\x. \c.
  (\q. \s. s (\b. b (\unused \r. r q) c) (s s s))
  (\b. (\p. p (\a. b
    (c (\e \v. a (\d \r. d v (r e))))
    (p (\f. c (\e. a e (f e))))))
  (x x)))
''')

# Put stream before continuation throughout recursion.  The public adapter
# restores the stipulated argument order.
write('stream_first', r'''
(\p. \c \s. p s c)
((\x.x x) (\x.(\p. \s \c.
  (\q. s (\b. b (\unused \r. r q) c) (s s s))
  (\b \r. p r (\a. b
    (c (\e \v. a (\d \r. d v (r e))))
    (\r. p r (\f. c (\e. a e (f e)))))))
  (x x)))
''')
