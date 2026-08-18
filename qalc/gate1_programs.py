"""Gate-1 sectors that force delta scattering through child readback."""

from lam_iam import App, Gate, Lam, Var


ZERO = Lam(Lam(Var(2)))
ONE = Lam(Lam(Var(1)))


def invoke(program):
    return App(App(program, Gate("h")), Gate("t"))


# Both programs leave x unapplied, so full-NF readback emits λx and must ENTER
# the argument of the rigid head x.  The child then fires H or T before RETURN.
MIXED_PROGRAMS = {
    "mixed-H-arg": invoke(Lam(Lam(Lam(
        App(Var(1), App(Var(3), ZERO)))))),
    "mixed-T-arg": invoke(Lam(Lam(Lam(
        App(Var(1), App(Var(2), ONE)))))),
}


MIXED_CERTIFICATES = {name: None for name in MIXED_PROGRAMS}


H = Var(3)
T = Var(2)
X = Var(1)
H0 = App(H, ZERO)
H1 = App(H, ONE)
T1 = App(T, ONE)


def under_inputs(body):
    return invoke(Lam(Lam(Lam(body))))


STRESS_PROGRAMS = {
    "stress-spine3": under_inputs(
        App(App(App(X, H0), T1), H1)),
    "stress-nested-H": under_inputs(App(X, App(H, H0))),
    "stress-beta-H": under_inputs(
        App(X, App(Lam(App(Var(1), Var(1))), H0))),
    "stress-nested-scope": under_inputs(
        App(App(X, H0), Lam(App(Var(1), App(Var(4), ZERO))))),
    "stress-two-H": under_inputs(App(App(X, H0), H0)),
}


STRESS_CERTIFICATES = {name: None for name in STRESS_PROGRAMS}


# Neutral normal forms exercise both controller rows that expose a gate as
# data rather than firing it.  The bare case reaches HEAD-GATE; the spines
# reach HEAD-NEUTRAL-GATE after a failed Boolean interrogation.
NEUTRAL_PROGRAMS = {
    "neutral-bare-t": invoke(Lam(Lam(Var(1)))),
    "neutral-H1": invoke(Lam(Lam(Lam(App(Var(3), Var(1)))))),
    "neutral-H2": invoke(Lam(Lam(Lam(Lam(
        App(App(Var(4), Var(2)), Var(1))))))),
}


NEUTRAL_CERTIFICATES = {name: None for name in NEUTRAL_PROGRAMS}
