# close a dbn term over constants (outer binders, innermost last in the list) and emit BLC bits
def close(t, names):
    """names: list of constants, names[0] outermost.  returns de Bruijn bits string."""
    n = len(names)
    def go(t, k):
        tag = t[0]
        if tag == 'v': return '1' * (t[1] + 1) + '0'
        if tag == 'k':
            i = names.index(t[1]); idx = k + (n - 1 - i)
            return '1' * (idx + 1) + '0'
        if tag == 'l': return '00' + go(t[1], k + 1)
        return '01' + go(t[1], k) + go(t[2], k)
    return '00' * n + go(t, 0)
