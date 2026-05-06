# Packet Sys Arena Core Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 203 | ship |
| stress | dirty state | 181 | ship |
| edge | guard slack | 233 | ship |
| recovery | layout drift | 176 | ship |
| stale | allocation pressure | 257 | ship |

Start with `stale` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `recovery` becomes less cautious without a clear reason, I would inspect the drag input first.
