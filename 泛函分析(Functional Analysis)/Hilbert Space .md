# Hilbert Space

## Contents

- [Definition](#definition)
- [Examples](#examples)
- [Theorem](#theorem)
- [Proof](#proof)
- [Related Topics](#related-topics)

---

## Definition

**Definition (Hilbert Space).**

A Hilbert space is a complete inner product space.

That is, a vector space $H$ equipped with an inner product
$\langle \cdot , \cdot \rangle$
such that:

$$
\|x\| = \sqrt{\langle x,x\rangle}
$$

and the space is complete with respect to this norm.

---

## Examples

**Example 1**

Finite-dimensional Euclidean space:

$$
\mathbb{R}^n
$$

**Example 2**

Square integrable functions:

$$
L^2(\mathbb{R})
$$

---

## Theorem

**Projection Theorem.**

Let $H$ be a Hilbert space and $M$ a closed subspace.

Then every $x \in H$ can be uniquely written as:

$$
x = y + z
$$

where:

$$
y \in M, \quad z \in M^\perp
$$

---

## Proof

Use orthogonal decomposition.

Details omitted here.

---

## Related Topics

- [Banach Space](banach-space.md)
- [Inner Product Space](inner-product-space.md)