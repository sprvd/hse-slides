#import "states.typ": *
#import "colors.typ": gray, add-blue

#let grid-cfg = (
  align: horizon,
  rows: 1,
  columns: 8,
  column-gutter: 1em,
)

#let slide-header = [
  #set grid(..grid-cfg)
  #set grid.vline(stroke: 1pt + gray)
  #set grid.cell(inset: 0.5em)

  #grid(
    grid.cell(
      image("../static/images/emblem.svg", height: 80%),
      colspan: 1,
    ),
    context department-state.get(),
    grid.vline(),
    context title.get(),
    grid.vline(),
    grid.cell(context current-topic.get(), colspan: 4),
    grid.vline(),
    grid.cell(
      [
        #set align(right)
        #context counter(page).get().first()
      ],
      colspan: 1
    )
  )
]

#let title-slide-header = [
  #set grid(..grid-cfg)
  #set grid.vline(stroke: 1pt + gray)
  #set grid.cell(inset: 0.5em)

  #grid(
    image("../static/images/logo.svg", height: 70%),
    grid.cell(context title.get(), colspan: 5),
    grid.vline(),
    context department-state.get(),
    grid.vline(),
    [#context datetime.today().year()]
  )
]

#let title-border(..args, body) = rect(..args, stroke: 5em + add-blue, width: 100%, height: 100%, inset: 4em, body)

#let slide-wrap(body) = {
  set page(fill: add-blue)
  place(horizon + center, dx: -6em)[
    #set text(size: 50em, tracking: -0.1em)
    *HSE*
  ]
  rect(fill: white, width: 100%, height: 100%)[
    #body
  ]
}