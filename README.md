# Vladimir Burmistrov — CV

Linux Systems Engineer. Резюме в Markdown; `templates/CV.tex` — шаблон оформления для `pandoc`, который собирает PDF-версию.

## Структура

| Файл | Назначение |
| --- | --- |
| `CV.md` | Текст резюме: контакты, профиль, навыки, опыт, образование, языки |
| `templates/CV.tex` | Шаблон оформления для `pandoc` (не самостоятельный LaTeX-документ) |
| `Makefile` | Локальная сборка: `make` — PDF, `make clean` — удаление |
| `README.md` | Этот файл |
| `.github/workflows/build.yml` | CI: сборка PDF и создание GitHub Release на каждый пуш в `main` |
| `.gitignore` | Исключает рабочие/редакторские файлы |

## Локальная сборка

Понадобится `make` и `pandoc` с `xelatex`. На Debian/Ubuntu:

```sh
sudo apt-get install pandoc texlive texlive-latex-extra fonts-dejavu
```

Сборка:

```sh
make        # создаёт Vladimir_Burmistrov_CV.pdf
make clean  # удаляет PDF
```

Сама команда (та же, что и в CI):

```sh
pandoc CV.md --template=templates/CV.tex --pdf-engine=xelatex -o Vladimir_Burmistrov_CV.pdf
```

## CI

На каждый пуш в `main` автоматически запускается сборка, создаётся GitHub Release
(`cv-<run_number>`) и в него загружается собранный PDF.

## История

Резюме редактируется в Markdown. Рабочие/редакторские файлы игнорируются Git через `.gitignore`.
