#import "@preview/hse-slides:0.1.0": *

#show grid.cell: set rect(fill: add-blue)
#show rect.where(fill: add-blue): set text(fill: white)
#show rect.where(fill: prim-blue): set text(fill: white)
#show rect.where(fill: white): set text(fill: prim-blue)
#set line(stroke: 1pt + gray)
#set text(lang: "ru")
#show link: underline

#show: presentation.with(
  organization: [Название организации],
  department: [Подразделение],
  work-title: [Название презентации],
)

#title-slide[
  #set text(size: 1.2em)
  Подзаголовок
  #v(1fr)
  #set text(size: 0.75em)
  _Автор: Фамилия И.О., ГРУ-ПА_
]

#slide[
  = Пример заголовка
  - Пункт один
  - Пункт два
]

#final-slide[]