#!/usr/bin/env bash
# Build John Tromp's `blc` tool (ref/AIT/Main.lhs) as an oracle for
# `blam blc`. Needs GHC 9.x (mtl, array and pretty ship with it); the one
# non-boot dependency, dlist, is replaced by a five-line shim.
#
#   tools/ait/build_blc.sh OUTDIR        # writes OUTDIR/blc
#   GHC=/path/to/ghc tools/ait/build_blc.sh OUTDIR
set -euo pipefail
root=$(cd "$(dirname "$0")/../.." && pwd)
out=${1:?usage: build_blc.sh OUTDIR}
ghc=${GHC:-ghc}
src=$(mktemp -d)
trap 'rm -rf "$src"' EXIT
cp "$root"/ref/AIT/{AIT.lhs,Lambda.lhs,Main.lhs} "$src"
mkdir -p "$src/Data"
cat > "$src/Data/DList.hs" <<'HS'
module Data.DList (DList, fromList, toList, append) where
newtype DList a = DL ([a] -> [a])
fromList :: [a] -> DList a
fromList xs = DL (xs ++)
toList :: DList a -> [a]
toList (DL f) = f []
append :: DList a -> DList a -> DList a
append (DL f) (DL g) = DL (f . g)
instance Semigroup (DList a) where (<>) = append
instance Monoid (DList a) where mempty = DL id
HS
mkdir -p "$out"
(cd "$src" && "$ghc" -O2 --make Main.lhs -o "$(cd "$out" && pwd)/blc" > /dev/null)
echo "built $out/blc"
