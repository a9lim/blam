//! A fast deterministic hasher for the pillar's in-process lookup tables.
//!
//! Every qALC hash table is lookup-only: ids, column merges, interned
//! carriers, and key sets either never iterate or reduce their iteration to
//! an order-free count, exact sum, or sorted output. The std `RandomState`
//! therefore buys nothing here but SipHash's per-write cost, which
//! dominated the carrier walk. This hasher is a word-at-a-time
//! multiply-rotate accumulator (the FxHash recurrence) closed by a
//! SplitMix64 finalizer so that low and high bits are both usable as
//! bucket indices. It is not DoS-resistant and does not need to be: the
//! keys are machine states, not attacker input.
//!
//! Hash values are process-internal. Nothing derived from them is written
//! to a report, checkpoint, fixture, or commitment; those use the typed
//! wire encoding and SHA-256 (`crate::hash`).

use std::hash::{BuildHasherDefault, Hash, Hasher};

const MULTIPLIER: u64 = 0xf135_7aea_2e62_a9c5;

/// Word-at-a-time deterministic hasher (see the module documentation).
#[derive(Clone, Copy, Debug, Default)]
pub struct FastHasher {
    hash: u64,
}

impl FastHasher {
    #[inline]
    fn add(&mut self, word: u64) {
        self.hash = (self.hash.rotate_left(26) ^ word).wrapping_mul(MULTIPLIER);
    }
}

impl Hasher for FastHasher {
    #[inline]
    fn write(&mut self, bytes: &[u8]) {
        let mut chunks = bytes.chunks_exact(8);
        for chunk in &mut chunks {
            let mut word = [0u8; 8];
            word.copy_from_slice(chunk);
            self.add(u64::from_le_bytes(word));
        }
        let rest = chunks.remainder();
        if !rest.is_empty() {
            let mut word = [0u8; 8];
            word[..rest.len()].copy_from_slice(rest);
            // The tail length rides in the top byte, which a short tail
            // never fills, so tails of different lengths stay distinct.
            self.add(u64::from_le_bytes(word) ^ ((rest.len() as u64) << 56));
        }
    }

    #[inline]
    fn write_u8(&mut self, i: u8) {
        self.add(u64::from(i));
    }

    #[inline]
    fn write_u16(&mut self, i: u16) {
        self.add(u64::from(i));
    }

    #[inline]
    fn write_u32(&mut self, i: u32) {
        self.add(u64::from(i));
    }

    #[inline]
    fn write_u64(&mut self, i: u64) {
        self.add(i);
    }

    #[inline]
    fn write_u128(&mut self, i: u128) {
        self.add(i as u64);
        self.add((i >> 64) as u64);
    }

    #[inline]
    fn write_usize(&mut self, i: usize) {
        self.add(i as u64);
    }

    #[inline]
    fn finish(&self) -> u64 {
        // SplitMix64 finalizer.
        let mut z = self.hash;
        z = (z ^ (z >> 30)).wrapping_mul(0xbf58_476d_1ce4_e5b9);
        z = (z ^ (z >> 27)).wrapping_mul(0x94d0_49bb_1331_11eb);
        z ^ (z >> 31)
    }
}

/// `BuildHasher` for [`FastHasher`].
pub type FastBuild = BuildHasherDefault<FastHasher>;

/// A lookup-only hash map under [`FastHasher`].
pub type HashMap<K, V> = std::collections::HashMap<K, V, FastBuild>;

/// A lookup-only hash set under [`FastHasher`].
pub type HashSet<T> = std::collections::HashSet<T, FastBuild>;

/// The [`FastHasher`] content hash of one value.
#[inline]
pub fn hash_one<T: Hash + ?Sized>(value: &T) -> u64 {
    let mut hasher = FastHasher::default();
    value.hash(&mut hasher);
    hasher.finish()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn deterministic_and_length_sensitive() {
        assert_eq!(hash_one(&[1u8, 2, 3][..]), hash_one(&[1u8, 2, 3][..]));
        assert_ne!(hash_one(&[0u8][..]), hash_one(&[0u8, 0][..]));
        assert_ne!(hash_one("ab"), hash_one("ba"));
        let mut a = FastHasher::default();
        a.write(&[0; 3]);
        let mut b = FastHasher::default();
        b.write(&[0; 4]);
        assert_ne!(a.finish(), b.finish());
    }
}
