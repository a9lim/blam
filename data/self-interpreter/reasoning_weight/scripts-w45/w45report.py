from w45run import *
def report():
 a=json.loads((P/'audit-w45.json').read_text());r=json.loads((D/'verified.json').read_text());k=a['certificates']
 old=json.loads((P/'audit-w44.json').read_text())['certificates']
 ns=sum(k.values());out=[]
 if ns==84810:
  out+=['(•̀ᴗ•́) **Weight 45 is closed. Every reader has weight at least 46, and 162 bits is the attained minimum of the separated class**, under the inherited conditions below. No candidate passed all four probes. No exception remains.']
 else:out+=[f'(•̀ᴗ•́) **Weight 45 remains open.** Of 84,810 comparator exceptions, {ns:,} have checked literal-source refutations. The remaining {84810-ns:,} are listed in `w45/residual.tsv`. The established class floor is 161 bits. No candidate passed all four probes.']
 out+=['**Finite check.** All 1,544,876 open sources were checked. The first mismatch was on zero for 1,459,746 and on unary length one for 320. No first mismatch occurred at lengths two or three. The other 84,810 comparisons raised 55,815 cutoffs and 28,995 cycle exceptions, all on zero.']
 positive=json.loads((D/'positive-controls.json').read_text())
 assert [positive[str(i)]['weight'] for i in (162,165)]==[46,49] and all(v['probes']==[True]*4 for v in positive.values())
 out+=['| Positive control | Weight | Zero | Unary 1 | Unary 2 | Unary 3 |\n|---|---:|---|---|---|---|\n| 162 reader | 46 | Pass | Pass | Pass | Pass |\n| 165 reader | 49 | Pass | Pass | Pass | Pass |','Both reader ASTs follow the machine sources. The 165 retains its outer `next` let. Both used the workers’ rigid substitution, probe constructors and `ck.matches(..., [120])` with fresh fuel per probe.']
 vals=sorted(k.items(),key=lambda x:(-x[1],x[0]));lines=['| Certificate kind | Sources | Certificate kind | Sources |','|---|---:|---|---:|']
 for j in range(0,len(vals),2):
  v=vals[j:j+2];lines.append('| '+' | '.join(f'{n} | {c:,}' for n,c in v)+(' |  | ' if len(v)==1 else '')+' |')
 out+=['\n'.join(lines),'**Certificate kinds absent at weight 44.**']
 desc={
 'simple':'Checked preparatory β-paths on each literal zero probe lead to a missing required variable (four), a repeated weak-head prefix (four), or a wrong rigid signature (two).',
 'internal missing':'After checked reductions inside the literal probe, a required free variable is absent. β-reduction preserves absence.',
 'internal head':'Checked internal reductions expose a rigid head or arity incompatible with the required normal target. Further reductions preserve this signature.',
 'lambda':'A checked reduction of the literal zero probe exposes a lambda. Every reduct of that endpoint is a lambda, while the required target is headed by the rigid tail.',
 'recursor':'The literal zero probe reduces to a spine headed by `K x`. Lean proves `K x →ʷ⁶ K (x K)` for every operand, contradicting any finite weak-head clock.',
 'positive-head embedding':'The source has the proved diagonal as its literal head with the recorded pending operands. A genuine weak-head step followed by β-reductions embeds the same head again, ruling out a finite clock even with those operands.',
 'parametric prefix recurrence':'For each of two literal probes, Lean checks the prefix into a pattern and proves that, for arbitrary terms in its holes, a positive sequence of weak steps returns to another instance on the head spine. A finite clock would strictly decrease at every return.',
 'orbit omitting one rigid variable':'For each literal term Lean verifies the contraction rule of every helper. The resulting grammar, which omits one required rigid variable, remains invariant until mixed with rigid operands. At a stopped endpoint either that variable is absent or the head is rigid. A reader permits neither outcome.',
 'delayed rigid arguments':'The two literal sources contract to the same helper diagonal with opposite rigid operands. Lean proves a weak-head invariant allowing arbitrary chains of constant functions and applications above a rigid head. Its endpoints are closed, rigid-headed, or constant functions, all excluded by the reader laws.',
 'instantiated regular closure and stack':'β-reduction commutes with the explicit substitution taking the correct probe head to a constant identity-returning handler and the other rigid atoms to self-application. A reader’s instantiated probe must reduce to the identity. The checked closure-and-stack model rules out its finite weak-head clock.',
 'probe type mismatch':'A checked type derivation on the literal probe survives β-reduction, while the executable complete type checker excludes that same type on the required target.',
 }
 for key in sorted(set(k)-set(old)):out.append(f'- **{key}.** '+desc[key])
 plan=parts();grp=collections.defaultdict(list)
 for x in plan:grp[x['cell']].append(x)
 tab=['| Cell and part prefix | Matching block intervals in part order | Source counts |','|---|---|---|']
 for i,ps in sorted(grp.items()):
  if len(ps)==1:continue
  t='('+','.join(map(str,cells[i]))+')'
  tab.append(f'| `{t}`, `cell{i}-part` | '+', '.join(f'[{p["lo"]},{p["hi"]})' for p in ps)+' | '+', '.join(f'{p["total"]:,}' for p in ps)+' |')
 out+=['**Block coverage.** The 133 nonempty cells occupied 139 checks. Every worker checked literal weights, within-check uniqueness, emission counts per block and the ordered block hash. An independent pass through the four coefficient files verified unique keys, every interval endpoint, hash and multiplicity against the per-check records.','\n'.join(tab),'Part numbering starts at zero. The JSON records are `w45/cell<i>-part<j>.json` and `w45/cell<i>.json` for unsplit cells. The largest check held 90,000 sources.']
 groups=[json.loads(l) for l in (D/'group-rss.jsonl').read_text().splitlines()]
 rss=max(x['peak'] for x in groups);pypeak=max(r['python_peak'],*(g['supervisor'] for g in groups))
 out += [f'**Verification and resources.** The final audit checked the literal AST, theorem statement and axiom report for all {ns:,} certified exceptions. The source hashes and successful Lean receipts cover {r["proof_modules"]:,} weight-specific files. Allowed axioms were `propext`, `Classical.choice` and `Quot.sound`. From first probe to final audit took {int(r["elapsed_seconds"]//60)} min {r["elapsed_seconds"]%60:.1f} s. The longest individual job took {r["max_single_job_seconds"]:.2f} s. Peak recorded RSS was {r["successful_lean_peak"]:,} bytes for a successful Lean proof, {pypeak:,} bytes for Python and {rss:,} bytes in a simultaneous supervisor-and-children sample.']
 out+=['The exact-PID RSS watchdog stopped two preliminary Lean arity proofs at 683,278,336 and 680,378,368 bytes. Factoring out three arithmetic bounds let their replacement modules check below 446 MB. No outer-watchdog intervention was observed. All supervisors returned and reaped their children.']
 out+=['**What the bound inherits.**',
 '1. The domain is the separated class of §1, with an opaque knot, separate β-normal NEXT satisfying its branch laws, and a one-hole reader with independent rigid zero and all-unary laws. A counterexample has a global minimum in the order (weight, λ count, depth of j). The inference that this minimum occurs in the grammar composes the §3 structural theorems with handwritten reductions.',
 '2. Earlier exhaustive searches supply the β-normal floor (including the joint-law tabling argument and seven handwritten cutoff exclusions), the s-spine and stream-λ body-let exclusions, the repaired deep-hole and linear-root exclusions, tight profiles, four-use depth-zero cells, pending literal-λ and nested heads, the hand-off/forced-chain cases, and the 98,442-source control cell. The narrowing coverage, admissibility of each price filter, archived inventories and literal-source matching are inherited. In particular, 49 earlier regular code-table instances rely on their archived source-to-table identifications. The withdrawn two-argument self-feeding rule was replaced by the protected-argument theorem.',
 '3. Two inherited partitions use engine divergence verdicts: 3,508 of the 73,311 three-λ sources, and 1,511 of the 66,577 two-leading-λ hand-offs. The previous weight ledgers through 44 supply the remaining lower-weight exclusions.',
 '4. Coefficient coverage depends on the scalar binder, leaf, scope and index-tax bounds and their implementation, contraction and hole repair, η and sinking, shielding and forced consumed prefixes, self-feeding and lift, shared-hand-off specialization, and the simplification cuts. In particular the copied-hole colour-replay argument preserves every unary law by hand, P1/P4 tests use the exposed weight, and an equal-weight replacement needs a lower λ count or a justified decrease in hole depth. The reading audit assessed this coverage. This run checked the emitted blocks and sources.',
 '5. The finite evidence uses the source constructor, de Bruijn interpretation, weak-head comparator and its rigid mismatch criterion. The two passing controls exercise that path. Lean checks the bridge from full reader laws to necessary probes, the price `|E| ≥ 116 + w(R)`, and the 162 witness and its wire identity. The standalone end-to-end Lean class floor is 146 bits.',
 'The archival ledgers are `audit-w45.json`, `histogram-w45.tsv`, `exception-manifest-w45.tsv`, `w45/proof-files.sha256`, `w45/parts.json` and `w45/residual.tsv`.']
 (P/'REPORT-w45.md').write_text('\n\n'.join(out)+'\n')
if __name__=='__main__':report()
