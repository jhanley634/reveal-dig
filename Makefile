
PROJECT = reveal-dig
SHELL := bash
PATH += $(HOME)/.local/bin
ACTIVATE = source .venv/bin/activate

all:
	ls -l

.venv/pyvenv.cfg:
	which uv || curl -LsSf https://astral.sh/uv/install.sh | sh
	uv venv

install: .venv/pyvenv.cfg
	$(ACTIVATE) && uv sync
	$(ACTIVATE) && pre-commit install

BLACK = black --target-version py314
STRICT = --strict --warn-unreachable --ignore-missing-imports --no-namespace-packages

ruff-check:
	$(ACTIVATE) && $(BLACK) . && ruff check --preview --fix
lint: ruff-check
	$(ACTIVATE) && isort .
	$(ACTIVATE) && pyright .
	$(ACTIVATE) && ty check
	$(ACTIVATE) && mypy $(STRICT) .

test:
	$(ACTIVATE) && python -m unittest tests/*_test.py so_2026/m??/*/*_test.py

CACHES := .mypy_cache/ .pyre/ .pytype/ .ruff_cache/
clean-caches:
	rm -rf $(CACHES)
clean: clean-caches
	rm -rf .venv/

.PHONY: all .venv install ruff-check lint test clean-caches clean
