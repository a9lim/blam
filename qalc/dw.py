"""Exact unbounded qALC scalar arithmetic over Z[omega]/sqrt(2)^k.

This is the reference analogue of ``blam::quantum::scalar::Dw``.
Python integers deliberately remove the engine's Capacity boundary so algebra
failures cannot be confused with resource exhaustion while Gate 1 is proved.
"""

from dataclasses import dataclass


@dataclass(frozen=True)
class Dw:
    a: int = 0
    b: int = 0
    c: int = 0
    d: int = 0
    k: int = 0

    def _mul_sqrt2(self):
        return Dw(self.b - self.d, self.a + self.c,
                  self.b + self.d, self.c - self.a, self.k)

    def raise_k(self, target):
        if target < self.k:
            raise ValueError("cannot lower a denominator with raise_k")
        out = self
        for _ in range(target - self.k):
            out = out._mul_sqrt2()
        return Dw(out.a, out.b, out.c, out.d, target)

    def reduce(self):
        out = self
        while out.k > 0:
            if ((out.b - out.d) & 1 or (out.a + out.c) & 1
                    or (out.b + out.d) & 1 or (out.c - out.a) & 1):
                break
            out = Dw((out.b - out.d) // 2, (out.a + out.c) // 2,
                     (out.b + out.d) // 2, (out.c - out.a) // 2,
                     out.k - 1)
        return out

    def __add__(self, other):
        target = max(self.k, other.k)
        left, right = self.raise_k(target), other.raise_k(target)
        return Dw(left.a + right.a, left.b + right.b,
                  left.c + right.c, left.d + right.d, target).reduce()

    def __neg__(self):
        return Dw(-self.a, -self.b, -self.c, -self.d, self.k)

    def __sub__(self, other):
        return self + -other

    def __mul__(self, other):
        a = self.a * other.a - self.b * other.d \
            - self.c * other.c - self.d * other.b
        b = self.a * other.b + self.b * other.a \
            - self.c * other.d - self.d * other.c
        c = self.a * other.c + self.b * other.b \
            + self.c * other.a - self.d * other.d
        d = self.a * other.d + self.b * other.c \
            + self.c * other.b + self.d * other.a
        return Dw(a, b, c, d, self.k + other.k).reduce()

    def conj(self):
        return Dw(self.a, -self.d, -self.c, -self.b, self.k)

    def norm_sq(self):
        return self.conj() * self

    def div_sqrt2(self):
        return Dw(self.a, self.b, self.c, self.d, self.k + 1).reduce()

    def omega(self):
        return Dw(-self.d, self.a, self.b, self.c, self.k).reduce()


ZERO = Dw()
ONE = Dw(1)
OMEGA = Dw(0, 1)
INV_SQRT2 = ONE.div_sqrt2()


def inner(left, right):
    if len(left) != len(right):
        raise ValueError("vector lengths differ")
    out = ZERO
    for x, y in zip(left, right):
        out = out + x.conj() * y
    return out.reduce()


if __name__ == "__main__":
    assert OMEGA.norm_sq() == ONE
    assert INV_SQRT2.norm_sq() + INV_SQRT2.norm_sq() == ONE
    h0 = (INV_SQRT2, INV_SQRT2)
    h1 = (INV_SQRT2, -INV_SQRT2)
    t0 = (ONE, ZERO)
    t1 = (ZERO, OMEGA)
    for columns in ((h0, h1), (t0, t1)):
        assert inner(columns[0], columns[0]) == ONE
        assert inner(columns[1], columns[1]) == ONE
        assert inner(columns[0], columns[1]) == ZERO
    print("DW EXACT H/T GRAM: PASS")
