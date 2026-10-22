# Superseded discovery output

The early `pilot*`, `class-*`, `combined-*`, and `refined-*` result files
were produced before correcting the generator's x capture. They are not
certificates and must not be used to claim exclusions.

The authoritative result is `REPORT.md`, with `certificates.json`,
`members.tsv`, `coverage.json`, and `verification.json`. The final checker
is `verify_all.py`. Unresolved cases remain explicit in `unresolved.md`
and `unresolved*.bits`.
