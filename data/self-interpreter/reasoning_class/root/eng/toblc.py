# close a de Bruijn term with rigid constants over the given names (outermost first) and encode as BLC bits
def close(t, names):
    n = len(names)
    def go(t, d):
        tag = t[0]
        if tag == 'k':
            i = names.index(t[1]); return ('v', d + (n - 1 - i))
        if tag == 'v': return t
        if tag == 'l': return ('l', go(t[1], d + 1))
        return ('a', go(t[1], d), go(t[2], d))
    b = go(t, 0)
    for _ in range(n): b = ('l', b)
    return enc(b)
def enc(t):
    out = []; st = [t]
    while st:
        x = st.pop()
        if x[0] == 'v': out.append('1' * (x[1] + 1) + '0')
        elif x[0] == 'l': out.append('00'); st.append(x[1])
        else: out.append('01'); st.append(x[2]); st.append(x[1])
    return ''.join(out)
