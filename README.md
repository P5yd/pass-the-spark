# Pass the Spark

An interactive presentation for Grade 4 (ages 9–10) introducing teaching — framed
as *passing something on* rather than as a job title. Runs about 45 minutes.

The word "teacher" never appears. Children who think the job lives only in a
classroom rule themselves out of it early, so the deck deliberately uses the
roles people actually go by: cook, older kid, grower, guide, creator, coach,
elder, scribe, guru, master, monitor.

## Running it

Live at **https://p5yd.github.io/pass-the-spark/** — open it in any browser.

Or open `pass-the-spark.html` locally. No build step, no server, no
dependencies. Works offline apart from the Google Fonts link.

| Control | Action |
| --- | --- |
| `←` `→` | Previous / next slide |
| `Space` | Next slide |
| `Esc` | Close the facilitator panel |
| Dots (bottom) | Jump to any slide |
| `#s4` in the URL | Deep-link straight to slide 4 |

**Grown-up notes** (top right) holds the full lesson plan: the minute-by-minute
schedule, discussion questions, short and extended variants, what to watch for
as evidence of learning, and an equity note about slide 2.

Best on a projector in a dimmed room — the deck is a single dark theme by design.

## The nine slides

1. **Pass the Spark** — title
2. **Who showed you?** — four-way tap poll
3. **Spot the guide** — six flip cards, six roles
4. **Across time** — clickable timeline, firelight to screen glow
5. **Which one helps?** — A/B on explaining a paper plane
6. **The four moves** — show it, shrink it, hand it over, check it stuck
7. **The 30-second pass** — topic spinner and countdown, partner micro-teach
8. **The wall** — children add "I could show someone how to…"
9. **You're already one of them** — close

## Notes for editing

- Single file: markup, CSS and JS all live in `pass-the-spark.html`.
- Slide 8's wall persists to `localStorage` on the presenting machine only.
  The **Clear the wall** button resets it between classes.
- `pass-the-spark.html` is the canonical file, and doubles as the source for a
  published Claude Artifact — which is why it has no `<!doctype>`/`<html>`/
  `<body>` wrapper. The publisher supplies those.
- `index.html` is generated from it by `./build.sh`, which adds that wrapper
  plus page metadata so GitHub Pages can serve it. **Run `./build.sh` after
  every edit to the source and commit both files**, or the live site drifts.

## Licence

The lesson content and code here are yours to adapt. This folder is independent
of the surrounding `gods-eye-view` project, which carries its own MIT licence.
