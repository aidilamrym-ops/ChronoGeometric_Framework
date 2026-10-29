# Makefile for ChronoGeometric Framework

.PHONY: verify
verify:
	@echo "Running lake build..."
	lake build
	@echo "Running anti‑circularity gate..."
	python "C:\Users\usER\.config\opencode\skills\anti-circularity\scripts\gate.py" check "lean/*.lean"
