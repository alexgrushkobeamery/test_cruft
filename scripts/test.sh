#!/bin/bash
set -euxo pipefail

./scripts/lint.sh
poetry run pytest -s --cov=test_cruft/ --cov=tests --cov-report=term-missing ${@-} --cov-report html
