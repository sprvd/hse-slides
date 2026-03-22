#import "slides.typ": *
#import "components.typ": *
#import "states.typ": *
#import "colors.typ": *

#let presentation(
  organization: [Название организации],
  department: [Подразделение],
  work-title: [Название презентации],
  body
) = {
  context department-state.update(department)
  context title.update(work-title)
  context current-topic.update(work-title)

  set text(font: "HSE Sans", fill: prim-blue, size: 14pt)
  set par(spacing: 0.75em)
  set page(paper: "presentation-16-9", fill: white)

  show heading: it => {
    block(below: 1em)[
      #it.body
    ]
  }
  show heading.where(level: 1): it => block(below: 1em)[
    #set text(size: 1.5em, font: "HSE Sans", style: "normal")
    #it.body
    #context current-topic.update(it.body)
  ]

  body
}