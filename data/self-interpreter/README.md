# Self-interpreter data

The evidence behind the self-interpreter record
(`docs/classical/self-interpreter/`): the machines, the reader bound that
makes the 162 the minimum of the separated class, and the Lean of the
46-bit global floor.

| path | what it is |
|---|---|
| `machines/int162.lam`, `.blc` | the 162-bit self-interpreter (`interpreter.md`; Lean: `Blc/Selfint162.lean`) |
| `machines/uni172.lam`, `uni184.lam`, `.blc` | Tromp's non-strict and strict wirings around the 162's body (Lean: `Blc/Universal.lean`) |
| `class-bound/` | the evidence for "every reader weighs at least 46" (`class-bound.md` §2–3): the β-normal search, the root-let envelope's inputs, and the complete weight-sliced check with its generated Lean; its `README.md` says what each part is and how to recheck it |
| `global-floor.tar.xz` | the per-size assemblies `lean/Blc/SelfintKernelFloor38.lean` … `46.lean` (with `SelfintCover43` and `SelfintSize45Cover`, which import them) and their 9,577 generated row modules, which together prove `selfintSizeBound_46` (`global-floor.md`); `scripts/global-floor.sh` unpacks them into `lean/Blc/` and kernel-checks the theorem. Every other module they import is in `lake build Blc` |

Everything else the record once kept here — the round-3 to round-5 lane
archives, the size-40 to size-45 enumeration route to the floor, the side
results' machines and certificates, and the search logs — is at tag
`selfint-record-2026-11-25`; the complete round-3 and round-4 lane archives
are at commit `703f50d`.
