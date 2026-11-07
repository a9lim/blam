from insert import *
def conv_any(src):
    t = rd.parse(src)
    assert t[0] == 'L'
    def cv(t, env):
        if t[0] == 'V':
            if t[1] == '_': return ('h',)
            if t[1] in env: return V(env.index(t[1]))
            if t[1] == 'c': return V(len(env) + 1) if False else V(len(env))  # c after s? see below
            if t[1] == 'j': return Kc('j')
            raise ValueError(t[1])
        if t[0] == 'L': return L(cv(t[2], (t[1],) + env))
        return A(cv(t[1], env), cv(t[2], env))
    # frame: outer binder = s (index len(env)-1 at top... we build with env containing s)
    def cv2(t, env):
        if t[0] == 'V':
            if t[1] == '_': return ('h',)
            if t[1] in env: return V(env.index(t[1]))
            if t[1] == 'c': return V(len(env))
            if t[1] == 'j': return Kc('j')
            raise ValueError(t[1])
        if t[0] == 'L': return L(cv2(t[2], (t[1],) + env))
        return A(cv2(t[1], env), cv2(t[2], env))
    return cv2(t[2], (t[1],))
