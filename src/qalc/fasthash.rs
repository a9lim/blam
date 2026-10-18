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

/// A first-touch interning index over a caller-owned `Vec`: ids in
/// insertion order, each key's hash computed once by the caller and stored
/// beside its id, and open addressing over ids keyed by that stored hash.
/// Growth re-buckets the stored hashes and never re-hashes a key; a probe
/// asks the caller for full equality only on a stored-hash hit, so a
/// duplicate costs one hash and no allocation.
///
/// A table slot packs the id with the top half of its hash, so a probe
/// touches the stored-hash array only on a tag match; the table stays at
/// most half full.
#[derive(Debug)]
pub struct HashIndex {
    hashes: Vec<u64>,
    /// `0` is empty; otherwise `(hash >> 32) << 32 | (id + 1)`.
    table: Vec<u64>,
}

impl Default for HashIndex {
    fn default() -> Self {
        Self::new()
    }
}

impl HashIndex {
    const TAG: u64 = !0u64 << 32;

    pub fn new() -> Self {
        Self {
            hashes: Vec::new(),
            table: vec![0; 8],
        }
    }

    /// The number of interned ids.
    pub fn len(&self) -> usize {
        self.hashes.len()
    }

    #[inline]
    fn slot_entry(hash: u64, id: usize) -> u64 {
        let id = u32::try_from(id + 1).expect("HashIndex ids fit in 32 bits");
        (hash & Self::TAG) | u64::from(id)
    }

    /// `Ok(id)` of the interned key with this `hash` for which `is_match`
    /// holds, or `Err(id)` after recording `hash` as the next id — the
    /// caller then appends the key at that id.
    #[inline]
    pub fn find_or_insert(
        &mut self,
        hash: u64,
        mut is_match: impl FnMut(usize) -> bool,
    ) -> Result<usize, usize> {
        let mask = self.table.len() - 1;
        let mut slot = hash as usize & mask;
        loop {
            let entry = self.table[slot];
            if entry == 0 {
                break;
            }
            if entry & Self::TAG == hash & Self::TAG {
                let id = (entry & !Self::TAG) as usize - 1;
                if self.hashes[id] == hash && is_match(id) {
                    return Ok(id);
                }
            }
            slot = (slot + 1) & mask;
        }
        let id = self.hashes.len();
        self.table[slot] = Self::slot_entry(hash, id);
        self.hashes.push(hash);
        if self.hashes.len() * 2 > self.table.len() {
            self.grow();
        }
        Err(id)
    }

    fn grow(&mut self) {
        let mut table = vec![0u64; self.table.len() * 2];
        let mask = table.len() - 1;
        for (id, &hash) in self.hashes.iter().enumerate() {
            let mut slot = hash as usize & mask;
            while table[slot] != 0 {
                slot = (slot + 1) & mask;
            }
            table[slot] = Self::slot_entry(hash, id);
        }
        self.table = table;
    }
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

    #[test]
    fn hash_index_is_first_touch_and_collision_safe() {
        // Every key shares one hash, so ids rest on the equality callback
        // alone, across several growths.
        let mut keys: Vec<u32> = Vec::new();
        let mut index = HashIndex::new();
        for round in 0..2 {
            for key in 0..100u32 {
                match index.find_or_insert(7, |id| keys[id] == key) {
                    Ok(id) => assert!(round == 1 && id == key as usize),
                    Err(id) => {
                        assert!(round == 0 && id == keys.len());
                        keys.push(key);
                    }
                }
            }
        }
        assert_eq!(index.len(), 100);
    }
}
