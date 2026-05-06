# packet-sys-arena-core

`packet-sys-arena-core` is a R project in systems programming. Its focus is to build an R toolkit that studies arena behavior through seeded input scenarios, with deterministic summary checks and local-only command execution.

## Why This Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Packet Sys Arena Core Review Notes

The first comparison I would make is `allocation pressure` against `layout drift` because it shows where the rule is most opinionated.

## Capabilities

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/packet-sys-arena-walkthrough.md` walks through the case spread.
- The R code includes a review path for `allocation pressure` and `layout drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`.

The R addition stays small enough to inspect in one sitting.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The same command runs the local verification path. The highest-scoring domain case is `stale` at 257, which lands in `ship`. The most cautious case is `recovery` at 176, which lands in `ship`.

## Roadmap

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
