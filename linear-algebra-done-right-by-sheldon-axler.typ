#outline(title: "Chapters")

#let example(content, caption) = figure(
  align(center)[#content],
  caption: caption,
  supplement: "Example",
)

#let formula(content, caption) = pad(y: 0.2cm)[#figure(
  align(center)[#content],
  caption: caption,
  supplement: "Formula",
)]

#let fml(content) = pad(y: 0.2cm)[#figure(
  align(center)[#content],
  supplement: "Formula",
)]

= Vector Spaces

== Intro

- Linear algebra is the study of maps on finite-dimensional vector spaces.
- A vector space is a set with operations of addition and scalar multiplication that satisfy natural algebraic properties.
- Subspaces for vector spaces is analogous to subsets fo sets.
- Sums of subspaces analogous to unions of subsets.
- Direct sums of subspaces analogous to unions of disjoint sets.

== $R^n$ and $C^n$

- Complex numbers were invented so we can take square roots of negative numbers.
- The idea is to have $i = sqrt(-1)$ that obeys the usual rules of arithemetic.

=== Formal definitions

- A complex number is an ordered pair $(a,b)$ where $a,b in R$
- We will write this as $a + b i$
- The set of all complex numbers is: #formula("Definition of the complex set")[$C = { a + b i : a, b in R}$]
- Addition and multiplication on $C$ are defined by:
#formula("Addition on C")[$(a+b i) + (c + d i) = (a + c) + (b + d)i$]
#formula("Multiplication on C")[$(a + b i)(c + d i) = (a c - b d) + (a d + b c)i$]

here $a,b,c,d in R$

- $R$ is a subset of $C$: $C in R$
- We think of: $i^2 = -1$

#example(
  $
    (2 + 3i)(4 + 5i) \
                     & = 2(4) + 2(5i) + 3i(4) + (3i)(5i) \
                     & = 8 + 10i + 12i - 15 \
                     & = -7 + 22i \
  $,
  "Applying the distribute property",
)

- Complex addition and complex multiplication have the familiar properties we expect.

=== Properties of complex arithemetic

- #strong()[commutativity]: $alpha + beta = beta + alpha$ and $alpha beta = beta alpha$ for all $alpha, beta in C$
- #strong()[associativity]: $(alpha + beta) + lambda = alpha + (beta + alpha)$ and $(alpha beta)lambda = alpha (beta lambda)$ for all $alpha, beta in C$
- #strong()[identities]: $(lambda + 0) = lambda$ and $lambda 1 = lambda$ for all $lambda in C$
- #strong()[additive inverse]: For every $(alpha in C)$
- #strong()[multiplicative inverse]: For every $alpha in C$ with $alpha != 0$, there exists a unique $beta in C$ such that $alpha beta = 1$
- #strong()[distributive property]: $lambda (alpha + beta) = lambda alpha + lambda beta$ for all $lambda, alpha, beta in C$

#example("commutativity of complex multiplication")[
  \ To show that #fml()[$alpha beta = beta alpha$ for all $alpha, beta in C$, we suppose: \
    $alpha = a + b i$ and $beta = c + d i$]
  where $a,b,c,d in R$. Then the definition of multiplication of complex numbers shows that: \
  #fml()[$alpha beta = (a + b i)(c + d i)\ = (a c - b d) + (a d + b c)i$]

  and

  #fml()[$beta alpha = (c + d i)(a + b i)\ = (c a - d b) + (c b + d a)i$]

  The equations above and the commutativity of multiplication and addition of real numbers show that $alpha beta = beta alpha$
]
