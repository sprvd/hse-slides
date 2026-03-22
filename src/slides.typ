#import "@preview/polylux:0.4.0": *
#import "components.typ": *
#import "colors.typ": *

#let polylux-slide = slide

#let slide(..args, body) = polylux-slide(..args)[
  #slide-wrap[
    #block(height: 15%, slide-header)
    #pad(left: 2em, right: 2em, bottom: 2em)[
      #body
    ]
  ]
]

#let title-slide(..args, body) = polylux-slide(..args)[
  #set page(margin: 3em)
  #slide-wrap[
    #block(height: 30%)[
      #title-slide-header
    ]
    #block[
      #set text(size: 2.5em)
      #strong(context title.get())
    ]
    #body
  ]
]

#let final-slide(..args, body) = polylux-slide(..args)[
  #set page(margin: 0pt, fill: prim-blue)
  #place(horizon + center)[
    #image("../static/images/logo-dark.svg", width: 15%)
  ]
  #body
]