#import "templates.typ": *
#set heading(numbering: "1.")
#show ref: it => text(blue, it)
#set page(
  paper: "a4",
  margin: (x: 1cm),
)
#show heading: it => text(
  it,
  font: "Arial",
  blue,
)
#outline(title: "Chapters")

= Vector Spaces

== Intro

Linear algebra is the study of maps on finite-dimensional vector spaces.
A vector space is a set with operations of addition and scalar multiplication that satisfy natural algebraic properties.
Subspaces for vector spaces is analogous to subsets fo sets.
Sums of subspaces analogous to unions of subsets.
Direct sums of subspaces analogous to unions of disjoint sets.

== $R^n$ and $C^n$

Complex numbers were invented so we can
take square roots of negative numbers.

#definition(title: "")[
  $ i = sqrt(-1) $
]

The idea is to have $i$ that obeys the usual rules of arithemetic.

=== Formal definitions

#definition(title: "Complex number")[
  A complex number is an ordered pair $(a,b)$ where $a,b in R$ \
  We will write this as $a + b i$ \
]

#definition(title: "Set of all complex numbers")[
  The set of all complex numbers is:
  $ C = { a + b i : a, b in R} $
]
\
\
\
#definition(title: "Addition and multiplication on C")[
  \
  Addition and multiplication on $C$ are defined by:

  - *Addition*: $ (a+b i) + (c + d i) = (a + c) + (b + d)i $

  - *Multiplication*: $ (a + b i)(c + d i) = (a c - b d) + (a d + b c)i $


  here $a,b,c,d in R$
]

$R$ is a subset of $C$: $C in R$ .
We think of: $i^2 = -1$

#example(title: "Applying the distribute property")[
  $
    (2 + 3i)(4 + 5i) \
                     & = 2(4) + 2(5i) + 3i(4) + (3i)(5i) \
                     & = 8 + 10i + 12i - 15 \
                     & = -7 + 22i \
  $
]

Complex addition and complex multiplication have the familiar properties we expect.

=== Properties of complex arithemetic

#definition(title: "Properties of complex arithematic")[
  - #strong()[commutativity]: $alpha + beta = beta + alpha$ and $alpha beta = beta alpha$ for all $alpha, beta in C$
  - #strong()[associativity]: $(alpha + beta) + lambda = alpha + (beta + alpha)$ and $(alpha beta)lambda = alpha (beta lambda)$ for all $alpha, beta in C$
  - #strong()[identities]: $(lambda + 0) = lambda$ and $lambda 1 = lambda$ for all $lambda in C$
  - #strong()[additive inverse]: For every $(alpha in C)$
  - #strong()[multiplicative inverse]: For every $alpha in C$ with $alpha != 0$, there exists a unique $beta in C$ such that $alpha beta = 1$
  - #strong()[distributive property]: $lambda (alpha + beta) = lambda alpha + lambda beta$ for all $lambda, alpha, beta in C$
]
#example(title: "commutativity of complex multiplication")[
  \ To show that $alpha beta = beta alpha$ for all $alpha, beta in C$, we suppose: \
  $alpha = a + b i$ and $beta = c + d i$
  where $a,b,c,d in R$. Then the definition of multiplication of complex numbers shows that: \
  $
    alpha beta & = (a + b i)(c + d i) \
               & = (a c - b d) + (a d + b c)i
  $

  and

  $
    beta alpha & = (c + d i)(a + b i) \
               & = (c a - d b) + (c b + d a)i
  $

  The equations above and the commutativity of multiplication and addition of real numbers show that $alpha beta = beta alpha$
]

=== Definition: $-alpha$, subtraction, 1/$alpha$, division, for complex numbers.

#definition(title: $-alpha ", subtraction," 1/alpha "," "division ," "for complex numbers."$)[
  \ Suppose $alpha, beta in C$

  - Let $-alpha$ denote the additive inverse of $alpha$. This $-alpha$ is the unique complex number such that:
  $ alpha + (-alpha) = 0 $

  - Subtraction on $C$ is defined by:
  $ beta - alpha = beta + (-alpha) $

  - For $alpha != 0$, let $1/alpha$ and 1/$alpha$ denote the multiplicative inverse of $alpha$. Thus 1/$alpha$ is the unique complex number such that:
  $ alpha(1 / alpha) = 1 $

  - For $alpha != 0$, division by $alpha$ is defined by:

  $ beta/alpha = beta (1/alpha) $
]



=== Notation: F

- We will use $F$, that stands for $R$ or $C$.
- So when we prove a theorem that holds for $F$, we will know it holds if we replace $F$ with either $C$ or $R$.
- Elements of $F$ are called *scalars*.
- The word "scalar", is a fancy word for number, used when we want to emphasize that an object is a number, as opposed to a #ref(<Vectors>, supplement: "Vector").

=== Exponants in $F$

- For $alpha in F$, and $m$ a positive integer, we define $alpha^m$ to denote the product $alpha$ with itself $m$ times:
$ alpha^m = underbrace(alpha dots.h alpha, m "times") $
- This definition implies:
$(a^m)^n = a^(m n)$ and $(alpha beta)^m = alpha^m beta^m$
for all $alpha, beta in F$ and all positive integers $m,n$.

=== Lists

#example(title: $R^2 "and" R^3$)[
  - The set $R^2$, which you can think of as a plane, is the set of all ordered pairs of real numbers:
  $ R^2 = {(x,y): x,y in R} $

  - The set $R^3$, which you can think of as an ordinary space, is a set of all ordered triples of real numbers:
  $ R^3 = {(x,y,z): x,y,z in R} $
]

#definition(title: "List, length")[
  - Suppose $n in NN$. A list of length $n$ is an ordered collection of $n$ elements (which might be numbers, other lists, or more abstract objects).
  - Two lists are equal if and only if they have the same length and the same elements in the same order.
]
- A list of length _n_ might be written as such: $(z_1, ... ,z_n)$
- Lists differ from finite sets in two ways:
  - In lists, order matters and repititions have meaning.
  - In sets, order and repetitions are irrelevant.

#example(title: "lists v.s. sets")[
  - The list $(3,5)$ and $(5,3)$ are not equal, but the sets ${3,5}$ and ${5,3}$ are equal.
  - The lists $(4,4)$ and $(4,4,4)$ are not equal (they do not have the same length), although sets ${4,4}$ amd ${4,4,4}$ are both equal to set ${4}$
]

=== $F^n$

- Let's fix a positive integer $n$ for now.

#definition(title: $F^n ", coordinate"$)[
  - $F^n$ is the set of all lists of length $n$ of elements of $F$:
  $ F^n = {(x_1,...,x_n): x_k in F "for" k = 1,...,n} $
  - For $(x_1,...,x_n) in F^n$ and $k in {1,...,n}$ we say that $x_k$ is the $k^"th"$ coordinate of $(x_1,...,x_n)$
]

#example(title: $C^4$)[
  - $C^4$ is the set of all lists of four complex numbners:
  $ C^4 = {(z_1,z_2,z_3,z_4): z_1,z_2,z_3,z_4 in C} $
]

- If $n >= 4$, then we cannotr visualize $R^n$ as a physical object.
- However, we can still perform algebraic manipulations.

=== Vectors <Vectors>
