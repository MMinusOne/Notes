#set math.cases(gap: 1em)
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

#let definition(title: none, body) = {
  block(
    width: 100%,
    fill: rgb("#e8f4f8"),
    stroke: (
      left: 3pt + rgb("#2196F3"),
      top: 1pt + rgb("#64B5F6"),
      right: 1pt + rgb("#64B5F6"),
      bottom: 1pt + rgb("#64B5F6"),
    ),
    inset: 16pt,
    radius: 2pt,
    breakable: true,
  )[
    #if title != none [
      #text(
        fill: rgb("#1976D2"),
        weight: "bold",
        size: 11pt,
        tracking: 0.5pt,
        font: "Arial",
        upper("definition: " + title),
      )
      #h(8pt)
    ]
    #body
  ]
}

// Theorem box (green theme)
#let theorem(title: none, body) = {
  block(
    width: 100%,
    fill: rgb("#e8f5e9"),
    stroke: (
      left: 3pt + rgb("#4CAF50"),
      top: 1pt + rgb("#81C784"),
      right: 1pt + rgb("#81C784"),
      bottom: 1pt + rgb("#81C784"),
    ),
    inset: 16pt,
    radius: 2pt,
    breakable: true,
  )[
    #if title != none [
      #text(
        fill: rgb("#2E7D32"),
        weight: "bold",
        size: 11pt,
        tracking: 0.5pt,
        font: "Arial",
        upper("theorem: " + title),
      )
      #h(8pt)
    ]
    #body
  ]
}

// Example box (amber theme)
#let example(title: none, body) = {
  block(
    width: 100%,
    fill: rgb("#fff8e1"),
    stroke: (
      left: 3pt + rgb("#FFC107"),
      top: 1pt + rgb("#FFD54F"),
      right: 1pt + rgb("#FFD54F"),
      bottom: 1pt + rgb("#FFD54F"),
    ),
    inset: 16pt,
    radius: 2pt,
    breakable: true,
  )[
    #if title != none [
      #text(
        fill: rgb("#F57F17"),
        weight: "bold",
        size: 11pt,
        tracking: 0.5pt,
        font: "Arial",
        upper("example: " + title),
      )
      #h(8pt)
    ]
    #body
  ]
}

// Important note box (red theme)
#let important(title: none, body) = {
  block(
    width: 100%,
    fill: rgb("#ffebee"),
    stroke: (
      left: 3pt + rgb("#f44336"),
      top: 1pt + rgb("#e57373"),
      right: 1pt + rgb("#e57373"),
      bottom: 1pt + rgb("#e57373"),
    ),
    inset: 16pt,
    radius: 2pt,
    breakable: true,
  )[
    #if title != none [
      #text(
        fill: rgb("#c62828"),
        weight: "bold",
        size: 11pt,
        tracking: 0.5pt,
        font: "Arial",
        upper("important: " + title),
      )
      #h(8pt)
    ]
    #body
  ]
}

// Proof box (purple theme)
#let proof(title: none, body) = {
  block(
    width: 100%,
    fill: rgb("#f3e5f5"),
    stroke: (
      left: 3pt + rgb("#9C27B0"),
      top: 1pt + rgb("#BA68C8"),
      right: 1pt + rgb("#BA68C8"),
      bottom: 1pt + rgb("#BA68C8"),
    ),
    inset: 16pt,
    radius: 2pt,
    breakable: true,
  )[
    #text(
      fill: rgb("#6A1B9A"),
      weight: "bold",
      size: 11pt,
      tracking: 0.5pt,
      style: "italic",
      font: "Arial",
      upper("proof: " + title),
    )
    #h(8pt)
    #body
    #h(1fr)
    #box(width: 8pt, height: 8pt, fill: rgb("#9C27B0"))
  ]
}


= Functions
== Functions and their graphs
A function can be represented by an equation, a numerical table, or a verbal description

=== Functions; Domain and Range

Say we have variable $y$ that depends on another
variable quantity $x$, we might say $y "is a function of" x$, and write this as:
$ y = f(x) "y equals f of x" $

In this notation, the letter $f$ is the function, $x$ is an *independant variable*, and $y$ is the *dependant variable* and output of $f$ at $x$.

#definition(title: "")[
  A *function* $f$ from a set $D$ to a set $Y$ is a rule that assigns a _unique_ (single) element $f(x) in Y$ to each element $x in D$
]

#important(title: "domain and range")[
  - The set $D$ of all possible values is called the *domain*
  - The set of all values of $f(x)$ as $x$ varies throughout $D$ is called the *range*, the range may not include every element in set $Y$
  - The domain of the larget set of real $x$-values for which the formula gives real $y$-values and is called the *natural domain*, this domain is assumed when the domain is not explicitly stated
  - $Y$ is the set of the *possible values*, and the *range* is the set that actually gets outputed by domain $D$ for $f(x), x in D$, and $D$ is the values we state $f(x)$ exists and is defined for
]

#grid(
  columns: 2,
  grid.cell()[
    - We can restrict function domains by stating it.
    We could write $y = x^2, x > 0$ \
    Changing the domain, changes the range as well.
    The range of $y = x^2$ is $[0,infinity)$

    -Another example: $y = x^2, x >= 2$, is the set of all real-numbers obtained by squaring numbers greater than or equal to 2.

    In *set notation*, the range is ${x^2 | x >= 2}$ or ${y | y >= 4}$ or $[4, infinity)$

    - When the range of a function is a set of real numbers, the function is said to be *real-valued*

    - The domains and ranges of many real-valued functions are intervals or combinations of intervals, which may be open, closed, half open, finite or infinite, the range of a funtion is not always easy to find, a function $f$ is like a machine that procudes an output $f(x)$ when given an input $x$


  ],
  grid.cell()[
    #figure()[#image(
      "assets/thomas-calculus/thomas-calculus-fig-1.2.png",
      height: 190pt,
    )]
  ],
)
#example(title: "Function, Domain (x), Range(y)")[
  #table(
    columns: 3,
    rows: 5,
    [Function], [Domain (x)], [Range (y)],

    [$y = x^2$], [$(-infinity, +infinity)$], [$[0, +infinity)$],

    [$y = 1/x$],
    [$(-infinity, 0) union (0, +infinity)$],
    [$(-infinity, 0) union (0,
      +infinity)$],

    [$y = sqrt(x)$], [$[0, +infinity)$], [$[0, +infinity)$],

    [$y = sqrt(4 - x)$], [$(-infinity, 4]$], [$[0, infinity)$],

    [$y = sqrt(1 - x^2)$], [$(-1, 1)$], [(0, 1)],
  )

  - For $y = x^2$ gives a real $y$-value for any real number $x$, so the domain is $(-infinity, +infinity)$. The range of $y = x^2$ is $[0, +infinity)$, because the square of any number is non-negative.
  - For $y = 1/x$, we set the denominator not equal to 0, $x != 0$, because a fraction is not defined if the denominator is 0, and the range is $RR - {0}$ because a fraction is only 0 when the numerator is 0
  - For $y = sqrt(x)$, we need the condition $x >= 0$, so the domain is $(0, +infinity)$
  - For $y = sqrt(4 - x)$, we need the condition:
  $
    4 - x & >= 0 \
       -x & >= -4 \
        x & <= 4 \
  $
  so $x$ is everything below and including 4, so that is $(-infinity, 4]$, and that can give us the set of all positive numbers $[0, +infinity)$
  - For $y = sqrt(1 - x^2)$:
  $
      1 - x^2 & >= 0 \
         -x^2 & >= -1 \
          x^2 & <= 1 \
    sqrt(x^2) & <= sqrt(1) \
          |x| & <= 1 \
           -1 & <= x <= 1
  $
  so the domain is $(-1, 1)$, the range of the function is $[0, 1]$
]

=== Graphs of Function

If $f$ is a function with domain $D$, its *graph* consists of points in the Cartesian plane whose coordinates are input-output pairs for $f$:

$ {(x, f(x)) | x in D} $

#figure()[
  #image("assets/thomas-calculus/thomas-calculus-fig-1.3-1.4.png")
]

=== The Vertical Line Test for a Function

Not every curve in the coordinate plane can be the graph of a function, a function $f$ can only have one value $f(x)$ for each $x$.

A circle cannot be a graph of a function, for instance.
However, it does contain the graphs of _two_ other functions, the upper semi circle defined by the function $f(x) = sqrt(1 - x^2)$ and the lower semi circle $g(x) = -sqrt(1 - x^2)$

#figure()[
  #image("assets/thomas-calculus/thomas-calculus-fig-1.7.png")
]

=== Piecewise-Defined Functions

Sometimes a function is described by using different formulas on different parts of its domain. One example is the *absolute value function*

$
  |x| = cases(
    x "if" x >= 0,
    -x "if" x < = 0
  )
$

#grid(
  columns: 2,
  grid.cell()[
    #figure()[
      #image("assets/thomas-calculus/thomas-calculus-fig-1.8-1.9-1.10.png", height: 25cm)
    ]
  ],
  grid.cell()[
    #example(title: "Piecewise function")[
      $
        f(x) = cases(
          -x "if" x < 0,
          x^2 "if" 0 <= x <= 1,
          1 "if" x > 1
        )
      $

      $f(x)$ is defined on the entire real line but has values given by different formulas depending on $x$
    ]
  ],
)

=== Increasing and Decreasing Functions

In the graph of a function _climbs_ or _rises_ from left to right, we say the function is _increasing_ or _decreasing_

#definition(title: "Increasing and decreasing function")[
  Let $f$ be a function defined on interval $I$, and let $x_1$ and $x_2$ be any two points on $I$ and $x_1 < x_2$

  1. If $f(x_2) > f(x_1)$, then $f$ is *increasing* between those two points
  2. If $f(x_2) < f(x_1)$ then $f$ is *decreasing* between those two points
]

#definition(title: "Even Functions and Odd Functions: Symmetry")[
  \ A function $y = f(x)$ is an:
  - *even function of x* if $f(-x) = f(x)$
  - *odd function of x* if $f(-x) = -f(x)$
  for every $x$ in the function's domain
]

The names even and odd come from the powers of $x$, if $y$ is an even power of $x$, as in $y = x^2$ or $y = x^4$, it's an even function of $x$ because $(-x)^2 = x^2$ and $(-x)^4$. If $y$ an odd power of $x$, as in $y = x$ or $y = x^3$, it is an odd function of $x$ because $(-x)^1 = -x$ and $(-x)^3 = -x^3$

#important(title: "The graph of odd and even functions")[
  #grid(
    columns: 2,
    grid.cell()[
      - The graph of an even function is *symmetric about the y-axis*. Since $f(-x) = f(x)$ a point $(x,y)$ lies on the graph if and only if the point $(-x, y)$ lies on the graph
      - The graph of an odd function is *symmetric about the origin*. Since $f(-x) = -f(x)$, a point $(x,y)$ lies on the graph if and only if the point $(-x, -y)$ lies on the graph. Equivalently, a graph is symmetric about the origin if a rotation of $180degree$ about the origin leaves the graph unchanged. Both $x$ and $-x$ must be in the domain of $f$
    ],
    grid.cell()[
      #figure()[
        #image("assets/thomas-calculus/thomas-calculus-fig-1.12.png", height: 10cm)
      ]
    ],
  )
]

\

#example(title: "Odd and even function")[
  - $f(x) &= x^2$:
  $
    f(x) & = f(-x)? \
     x^2 & = (-x)^2 \
     x^2 & = x^2 \
  $
  This is a pair function
]

=== Common Functions

A variety of important types of functions are frequently encountered in calculus.

==== Linear Functions

#definition(title: "")[
  A linear functioin is of form: $f(x) = m x + b$, for constants $m$ and $b$

  - $m$ is the *slope* of the function
  - $b$ is the y-intercept
]

#important(title: "Proportionality")[
  - The variables $x$ and $y$ are *proportional* (to one another), if one is always a constant multiple of the other; that is, if $y = k x$ for $k != 0$
  - If $y$ is proportional to the reciprocal $1/x$ then they are *inversely proportional*
]


#figure()[
  #image("assets/thomas-calculus/thomas-calculus-fig-1.14.png")
]

==== Power Functions
