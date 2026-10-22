Coordinator follow-up, same lane and directory (tmp/round4/close46/), same
rules. The let-sinking lemma is a real step: sharing must cross operands.

Next: the cross-operand sharing case with lambda-containing arguments.
Your budgets bound the shared argument A (m <= 6 under λs, m <= 7 at the
root), and the redex body must be an s-spine whose >= 2 operands each use x.
Two observations that may help: (i) by the first-dispatch analysis (jn
NOTES §2), the operands' roles after the stream's application are fixed —
selector-position (consumed by the bit), zero-branch, unary-branch, shared
tail — so a shared x must serve two of those roles; prove which pairs are
semantically possible (your Paired algebra with x as a callback whose action
on the probes is constrained by A's budget), and price each possible pair
exactly with your cost-change formula; (ii) the role pair (selector, unary
arm) is exactly the capturing helper G_c = λx u. x C₁ (x x u)
(G_c F = I, G_c s = the 162's arm; the share46 lane priced its shared reader
at 67) — show why every helper serving that pair costs at least as much as
writing both roles out, or find the cheaper one. Record progress in NOTES.md;
extend REPORT.md with a new section. Codex weekly usage is at 87%: please
make this pass count and write the report as soon as you have a stable
increment.
