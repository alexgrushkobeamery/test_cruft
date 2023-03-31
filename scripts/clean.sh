#!/bin/bash
set -euxo pipefail

poetry run isort test_cruft/ tests/
poetry run black test_cruft/ tests/
