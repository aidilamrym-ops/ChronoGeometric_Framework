# Chrono‑Geometric Computing Framework

## Overview

*Chrono‑Geometric* framework unifies **Pure Arithmetic** (`MyNat`), **Pure Geometry** (`Shape`) and **Internal Time** (`Chronon`).

```
CHRONO‑GEOMETRIC TRIAD

Pure Arithmetic (MyNat) | Pure Geometry (Shape) | Pure Chronology (Chronon)

MyNat:
  zero, succ

Shape:
  point, line, plane, space (list)

Chronon:
  now, next

ChronoState:
  value : MyNat
  shape : Shape
  time  : Chronon
```

## Build & Test

```bash
# Clone repository
git clone https://github.com/aidilamrym-ops/ChronoGeometric_Framework.git
cd ChronoGeometric_Framework

# Build (downloads Mathlib on first run)
lake build

# Run smoke tests (Lean) – should report success
lake build Test
```

## Verification (Professional CI)

Add `make verify` target (see `Makefile`). It builds the project and runs *anti‑circularity* gate to ensure no placeholders, axioms, or circular proofs remain.

```bash
make verify
```

Output example:

```
Running lake build...
... (build logs)
Running anti‑circularity gate...
ANTI‑CIRCULARITY GATE PASS
```

## Repository Structure

```
ChronoGeometric_Framework/
├─ lakefile.toml            # Lake package configuration
├─ lean/                   # Lean source files
│   ├─ NewArithmetic.lean
│   ├─ ChronoNat.lean
│   ├─ ChronoReduction.lean
│   ├─ ChronoBridge.lean
│   ├─ ChronoSAT.lean
│   ├─ ChronoRiemann.lean
│   └─ Test.lean
├─ python/                 # Python utilities
│   └─ ...
├─ Makefile                # `verify` target for CI
└─ README.md               # This file
```

## Continuous Integration

Configure CI (GitHub Actions, Azure Pipelines, etc.) to run `make verify` on every push/PR. Failing gate aborts merge, guaranteeing only real proofs reach main branch.

## License

MIT License – see `LICENSE` file.

*Last updated: 2026‑10‑30*