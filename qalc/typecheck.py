"""Executable typing judgment for the fixed-shell h-only fragment.

The kernel's coverage claims quantify over 'typed, h-only,
signature-abstracted' programs. This file makes that precise:

  Programs have the shell form  prog(body) = (\\h.\\t. body) h t.
  The shell binders are SIGNATURE bindings, not lambda-abstractions:
  h and t are typed by the polymorphic gate signature

      h, t : forall a. B a -> B a,      B a := a -> a -> a

  instantiated FRESH at every occurrence (rank-2 with respect to
  the shell). The body itself is inferred by first-order
  unification with occurrence-polymorphic signature constants
  (HM-style; no lets, so no generalization), with no base
  constants: literal lambdas (0^, 1^, NOT, SEL, ...) get their
  natural simple types. The language boundary is syntactic: shell
  args exactly Gate('h'), Gate('t'); no Gate literal in the body.
  A program is IN the typed fragment iff both checks pass and
  inference succeeds — the result type is free
  (boolean results halt in halt0/halt1; function-shaped results
  halt in the haltI sector). h-ONLY additionally requires that no
  occurrence resolves to the shell's t binder (the t gate needs
  Z[w] scalars and is outside this checker's h-only claim).

  Membership in the typed fragment does NOT by itself claim
  coverage: the machine's PASS claim quantifies over typable
  h-only programs whose canonical pipeline validates clean
  (discover_total + validate; typed guard rejections such as
  dupcall's refire are visible, not covered).

  dup ((\\x. x x) applied) is deliberately untypable — the occurs
  check rejects self-application. It stays in the battery as an
  untyped-machine regression, outside the fragment.

This checker is part of the authoritative Gate-1 battery and defines fragment
membership for the version-controlled reference.
"""
import sys
sys.path.insert(0, '.')
from lam_iam import Var, Lam, App, Gate, show

class Untypable(Exception):
    pass

def _find(t, sub):
    while t[0] == 'v' and t[1] in sub:
        t = sub[t[1]]
    return t

def _occurs(v, t, sub):
    t = _find(t, sub)
    if t[0] == 'v':
        return t[1] == v
    return _occurs(v, t[1], sub) or _occurs(v, t[2], sub)

def _unify(a, b, sub):
    a, b = _find(a, sub), _find(b, sub)
    if a == b:
        return
    if a[0] == 'v':
        if _occurs(a[1], b, sub):
            raise Untypable('occurs check')
        sub[a[1]] = b
        return
    if b[0] == 'v':
        return _unify(b, a, sub)
    _unify(a[1], b[1], sub)
    _unify(a[2], b[2], sub)

def _bool(a):
    return ('->', a, ('->', a, a))

GATE = 'GATE'          # marker: shell signature binder

def infer(t, env, sub, fresh, gate_hits):
    """env: binder types innermost-first; GATE markers instantiate
    the gate signature fresh per occurrence."""
    if isinstance(t, Var):
        if t.i < 1 or t.i > len(env):
            raise Untypable('open body: free variable')
        ty = env[t.i - 1]
        if ty is GATE:
            a = fresh()
            gate_hits.append(len(env) - t.i)   # 0 = outer (h), 1 = inner (t)
            return ('->', _bool(a), _bool(a))
        return ty
    if isinstance(t, Lam):
        a = fresh()
        r = infer(t.body, [a] + env, sub, fresh, gate_hits)
        return ('->', a, r)
    if isinstance(t, App):
        tf = infer(t.f, env, sub, fresh, gate_hits)
        tx = infer(t.a, env, sub, fresh, gate_hits)
        r = fresh()
        _unify(tf, ('->', tx, r), sub)
        return r
    if isinstance(t, Gate):
        a = fresh()
        return ('->', _bool(a), _bool(a))
    raise Untypable('unknown node %r' % (t,))

def _pretty(t, sub, names):
    t = _find(t, sub)
    if t[0] == 'v':
        if t[1] not in names:
            names[t[1]] = chr(ord('a') + (len(names) % 26))
        return names[t[1]]
    l = _pretty(t[1], sub, names)
    r = _pretty(t[2], sub, names)
    if _find(t[1], sub)[0] == '->':
        l = '(%s)' % l
    return '%s -> %s' % (l, r)

def _has_gate(t):
    if isinstance(t, Gate):
        return True
    if isinstance(t, Lam):
        return _has_gate(t.body)
    if isinstance(t, App):
        return _has_gate(t.f) or _has_gate(t.a)
    return False

def fragment_check(term):
    """Shell-form programs only: returns
    {'typable': bool, 'type' | 'reason', 'h_only': bool}.
    The language boundary is enforced syntactically: the shell
    arguments must be exactly Gate('h')
    then Gate('t'), and NO Gate literal may occur inside the body
    (gates are reachable only through the signature binders)."""
    if not (isinstance(term, App) and isinstance(term.f, App)
            and isinstance(term.f.f, Lam)
            and isinstance(term.f.f.body, Lam)
            and isinstance(term.f.a, Gate) and isinstance(term.a, Gate)):
        return {'typable': False, 'reason': 'not shell form',
                'h_only': False}
    if not (term.f.a.name == 'h' and term.a.name == 't'):
        return {'typable': False,
                'reason': 'shell args must be Gate(h), Gate(t)',
                'h_only': False}
    body = term.f.f.body.body
    if _has_gate(body):
        return {'typable': False,
                'reason': 'gate literal inside body',
                'h_only': False}
    n = [0]
    def fresh():
        n[0] += 1
        return ('v', n[0])
    sub, hits = {}, []
    # env innermost-first: Var(1) = t binder (inner), Var(2) = h.
    try:
        ty = infer(body, [GATE, GATE], sub, fresh, hits)
    except Untypable as e:
        return {'typable': False, 'reason': str(e), 'h_only': None}
    # marker hits record len(env) - i: the outer marker (h) sits at
    # env[L-1], so an h occurrence at body depth d is Var(d+2) with
    # L = d+2, giving 0; a t occurrence gives 1.
    h_only = all(k == 0 for k in hits)
    return {'typable': True, 'type': _pretty(ty, sub, {}),
            'h_only': h_only}

if __name__ == '__main__':
    from suite import PROGRAMS, prog, H2, ZERO
    print('%-9s %-8s %-7s %s' % ('program', 'typable', 'h-only',
                                 'type / reason'))
    n_honly = 0
    for name, term in PROGRAMS.items():
        r = fragment_check(term)
        if r['typable'] and r.get('h_only'):
            n_honly += 1
        print('%-9s %-8s %-7s %s' %
              (name, r['typable'], r.get('h_only'),
               r.get('type', r.get('reason'))))
    print('\n--- escapes (must be untypable / out of fragment) ---')
    escapes = {
        'h h':        prog(App(H2, H2)),
        'self-app':   prog(App(Lam(App(Var(1), Var(1))), ZERO)),
        'h (h) arg':  prog(App(App(H2, H2), ZERO)),
        'body gate':  prog(Gate('t')),
        'body gateh': prog(Gate('h')),
        'swapped':    App(App(Lam(Lam(App(Var(2), ZERO))),
                              Gate('t')), Gate('h')),
        'h h shell':  App(App(Lam(Lam(App(Var(2), ZERO))),
                              Gate('h')), Gate('h')),
    }
    esc_ok = True
    for name, term in escapes.items():
        r = fragment_check(term)
        esc_ok = esc_ok and not r['typable']
        print('%-10s typable=%s %s' %
              (name, r['typable'], r.get('type', r.get('reason'))))
    # The printed total and exit-code verdict require 17 of the 20 suite
    # programs to be typable h-only
    # (q, dup, dupcall out — the registered fragment count), and
    # every escape must be rejected.
    total_ok = n_honly == 17 and esc_ok
    print('fragment total: typable-h-only %d/20 (expect 17), '
          'escapes rejected %s -> %s'
          % (n_honly, esc_ok, 'PASS' if total_ok else 'FAIL'))
    sys.exit(0 if total_ok else 1)
