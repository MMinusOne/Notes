
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
