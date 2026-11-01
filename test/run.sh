#!/usr/bin/env bash
# Builds the fixture site with the theme and checks the rendered HTML.
# Point HUGO at the binary to test: Micro.blog recommends 0.158, and the theme also supports 0.117.
set -u

root="$(cd "$(dirname "$0")/.." && pwd)"
out="$(mktemp -d)"
trap 'rm -rf "$out"' EXIT

"${HUGO:-hugo}" --source "$root/test/site" --destination "$out" --logLevel error \
	--themesDir "$(dirname "$root")" --theme "$(basename "$root")" || exit 1

failures=0

page() { tr -s ' \t\n' ' ' < "$out/$1"; }

has() {
	if ! page "$1" | grep -qF -- "$2"; then
		echo "FAIL $1 should contain: $2"
		failures=$((failures + 1))
	fi
}

lacks() {
	if page "$1" | grep -qF -- "$2"; then
		echo "FAIL $1 should not contain: $2"
		failures=$((failures + 1))
	fi
}

source "$root/test/checks.sh"

[ "$failures" -eq 0 ] && echo "All checks passed" || { echo "$failures failed"; exit 1; }
