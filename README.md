# `hse-slides`

Шаблон презентаций в стиле НИУ ВШЭ для [Typst](https://typst.app).

## Использование

```typst
#import "@preview/hse-slides:0.1.0": *

#show: presentation.with(
  organization: [Подразделение],
  work-title: [Название презентации],
)

#title-slide[
  Подзаголовок
]

#slide[
  = Заголовок слайда
  - Пункт один
]

#final-slide[]
```

## Параметры `presentation`

| Параметр | Тип | По умолчанию | Описание |
|---|---|---|---|
| `organization` | content | `[Подразделение]` | Название подразделения |
| `work-title` | content | `[Название презентации]` | Заголовок презентации |

## Шрифты

Шаблон использует шрифт HSE Sans. Необходимо установить его в систему или передать путь при компиляции:

```bash
typst compile --font-path static/fonts template/main.typ
```

## Изображения

Необходимо самостоятельно добавить файлы логотипов в `static/images/`:

```
static/images/
├── emblem.svg
├── logo.svg
└── logo-dark.svg
```

## Зависимости

- [polylux](https://typst.app/universe/package/polylux) `0.4.0`
