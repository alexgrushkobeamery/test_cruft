#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run mypy --ignore-missing-imports test_cruft/
poetry run isort --check --diff test_cruft/ tests/
poetry run black --check test_cruft/ tests/
poetry run flake8 test_cruft/ tests/
poetry run safety check -i 39462 -i 40291
poetry run bandit -r test_cruft/
