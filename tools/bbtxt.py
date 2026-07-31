#!/usr/bin/env python3
"""Cross-match Tromp's BB.txt fail traces against our census unknowns.

BB.txt's `-- TODO:` lines are insertPHT traces — the terms his BB.lhs run
failed to adjudicate, in de Bruijn lambda notation (1-based indices,
`\\` = lambda scoping right as far as possible, juxtaposition = left-assoc
application). Encoding them to BLC bits makes each self-identifying by
length, so no section bookkeeping is needed.

Usage: bbtxt.py <BB.txt> <unknowns_all.txt>
"""

import re
import sys


def tokenize(s):
    for m in re.finditer(r"\\|\(|\)|\d+", s):
        yield m.group()
    yield None


class P:
    def __init__(self, s):
        self.toks = list(tokenize(s))
        self.i = 0

    def peek(self):
        return self.toks[self.i]

    def next(self):
        t = self.toks[self.i]
        self.i += 1
        return t

    def atom(self):
        t = self.peek()
        if t == "\\":
            self.next()
            return ("lam", self.term())
        if t == "(":
            self.next()
            inner = self.term()
            assert self.next() == ")", "expected )"
            return inner
        if t and t.isdigit():
            self.next()
            return ("var", int(t))
        return None

    def term(self):
        t = self.atom()
        assert t is not None, "empty term"
        while True:
            nxt = self.atom()
            if nxt is None:
                return t
            t = ("app", t, nxt)


def encode(t):
    if t[0] == "var":
        assert t[1] < 64, f"var {t[1]}: certainly a mis-parse, refusing to unary-encode"
        return "1" * t[1] + "0"
    if t[0] == "lam":
        return "00" + encode(t[1])
    return "01" + encode(t[1]) + encode(t[2])


def main():
    bbtxt, unknowns_path = sys.argv[1], sys.argv[2]
    fails = {}  # bits -> notation
    for ln in open(bbtxt):
        m = re.match(r"-- TODO: (.*)", ln.strip())
        if not m:
            continue
        # The term is the leading run of term-syntax characters; everything
        # after (prose annotations, "loops as did", size notes) is cut at
        # the first letter. Without this, prose numbers parse as de Bruijn
        # indices and encode() unary-expands them — a "size 38127987424941"
        # annotation becomes an attempted 38-terabit string.
        body = re.match(r"[\\()\d ]*", m.group(1)).group().strip()
        bits = encode(P(body).term())
        fails[bits] = body

    ours = {ln.strip() for ln in open(unknowns_path) if ln.strip()}

    by_size = {}
    for b, note in fails.items():
        by_size.setdefault(len(b), []).append((b, note))

    for n in sorted(by_size):
        his = {b for b, _ in by_size[n]}
        our_n = {b for b in ours if len(b) == n}
        both = his & our_n
        his_only = his - our_n
        ours_only = our_n - his
        print(f"n={n}: his fails {len(his)}, our unknowns {len(our_n)}, "
              f"shared {len(both)}")
        for b in sorted(his_only):
            print(f"  HIS-FAIL-ONLY (we adjudicated): {b}  # {fails[b]}")
        for b in sorted(ours_only):
            print(f"  OUR-UNKNOWN-ONLY (he adjudicated): {b}")


if __name__ == "__main__":
    main()
