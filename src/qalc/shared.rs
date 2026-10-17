//! `Shared<T>`: an immutable reference-counted value carrying its own
//! content hash.
//!
//! Successive machine states differ in a few registers; the rest (the
//! output zipper across kernel steps, captured log segments across every
//! copy of a logged position) is the same value. Sharing it by pointer
//! makes a successor's clone O(1) and its hash O(1), and keeps a
//! 300,000-state carrier from storing the same zipper 300,000 times.
//!
//! Identity stays structural. `Hash` writes the cached content hash, which
//! is a deterministic function of the value (the [`FastHasher`] digest of
//! `T`'s own `Hash`), so equal values hash equally wherever they were
//! allocated; `Eq` is pointer equality as a fast path, then cached-hash
//! inequality as a fast rejection, then full structural equality.
//! Allocation identity is never semantic.
//!
//! [`FastHasher`]: super::fasthash::FastHasher

use std::fmt;
use std::hash::{Hash, Hasher};
use std::ops::{Deref, DerefMut};
use std::sync::Arc;

use super::fasthash::hash_one;

#[derive(Clone)]
struct Node<T> {
    hash: u64,
    value: T,
}

/// An immutable shared value with a cached content hash.
pub struct Shared<T>(Arc<Node<T>>);

impl<T: Hash> Shared<T> {
    pub fn new(value: T) -> Self {
        Self(Arc::new(Node {
            hash: hash_one(&value),
            value,
        }))
    }

    /// Copy-on-write access. The value is cloned only if it is shared, and
    /// the cached hash is recomputed when the guard drops.
    pub fn make_mut(&mut self) -> SharedMut<'_, T>
    where
        T: Clone,
    {
        SharedMut {
            node: Arc::make_mut(&mut self.0),
        }
    }
}

impl<T> Shared<T> {
    /// The cached content hash.
    pub fn content_hash(&self) -> u64 {
        self.0.hash
    }

    /// Do both handles name the same allocation?
    pub fn ptr_eq(left: &Self, right: &Self) -> bool {
        Arc::ptr_eq(&left.0, &right.0)
    }
}

impl<T: Clone> Shared<T> {
    /// The owned value, cloned only if it is still shared.
    pub fn into_inner(self) -> T {
        match Arc::try_unwrap(self.0) {
            Ok(node) => node.value,
            Err(shared) => shared.value.clone(),
        }
    }
}

impl<T> Deref for Shared<T> {
    type Target = T;

    #[inline]
    fn deref(&self) -> &T {
        &self.0.value
    }
}

impl<T> AsRef<T> for Shared<T> {
    fn as_ref(&self) -> &T {
        &self.0.value
    }
}

impl<T> Clone for Shared<T> {
    #[inline]
    fn clone(&self) -> Self {
        Self(Arc::clone(&self.0))
    }
}

impl<T: Eq> PartialEq for Shared<T> {
    #[inline]
    fn eq(&self, other: &Self) -> bool {
        Arc::ptr_eq(&self.0, &other.0)
            || (self.0.hash == other.0.hash && self.0.value == other.0.value)
    }
}

impl<T: Eq> Eq for Shared<T> {}

impl<T> Hash for Shared<T> {
    #[inline]
    fn hash<H: Hasher>(&self, state: &mut H) {
        state.write_u64(self.0.hash);
    }
}

impl<T: fmt::Debug> fmt::Debug for Shared<T> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        self.0.value.fmt(f)
    }
}

impl<T: Hash> From<T> for Shared<T> {
    fn from(value: T) -> Self {
        Self::new(value)
    }
}

impl<T: Hash> FromIterator<T> for Shared<Vec<T>> {
    fn from_iter<I: IntoIterator<Item = T>>(iter: I) -> Self {
        Self::new(iter.into_iter().collect())
    }
}

impl<'a, T> IntoIterator for &'a Shared<Vec<T>> {
    type Item = &'a T;
    type IntoIter = std::slice::Iter<'a, T>;

    fn into_iter(self) -> Self::IntoIter {
        self.0.value.iter()
    }
}

impl<T: Hash + Default> Default for Shared<T> {
    fn default() -> Self {
        Self::new(T::default())
    }
}

/// Mutable access to a uniquely owned [`Shared`] value; the content hash is
/// recomputed on drop.
pub struct SharedMut<'a, T: Hash> {
    node: &'a mut Node<T>,
}

impl<T: Hash + fmt::Debug> fmt::Debug for SharedMut<'_, T> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        self.node.value.fmt(f)
    }
}

impl<T: Hash> Deref for SharedMut<'_, T> {
    type Target = T;

    fn deref(&self) -> &T {
        &self.node.value
    }
}

impl<T: Hash> DerefMut for SharedMut<'_, T> {
    fn deref_mut(&mut self) -> &mut T {
        &mut self.node.value
    }
}

impl<T: Hash> Drop for SharedMut<'_, T> {
    fn drop(&mut self) {
        self.node.hash = hash_one(&self.node.value);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn identity_is_structural_and_hash_tracks_mutation() {
        let left = Shared::new(vec![1u32, 2, 3]);
        let right = Shared::new(vec![1u32, 2, 3]);
        assert!(!Shared::ptr_eq(&left, &right));
        assert_eq!(left, right);
        assert_eq!(left.content_hash(), right.content_hash());
        assert_eq!(hash_one(&left), hash_one(&right));

        let mut changed = left.clone();
        changed.make_mut().push(4);
        assert_eq!(*left, vec![1, 2, 3], "copy-on-write leaves the original");
        assert_eq!(changed, Shared::new(vec![1, 2, 3, 4]));
        assert_ne!(changed, left);
        assert_eq!(changed.into_inner(), vec![1, 2, 3, 4]);
    }
}
