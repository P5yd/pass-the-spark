#!/bin/sh
# Wraps the deck source into a complete HTML document for GitHub Pages.
#
# pass-the-spark.html is the canonical content and doubles as the source for a
# Claude Artifact, which supplies its own <html>/<head> wrapper — so the file
# deliberately has none. A page served over HTTP needs one. Run this after any
# edit to the source, then commit both files.
set -e
cd "$(dirname "$0")"

{
  cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="description" content="An interactive 45-minute lesson for Grade 4 introducing teaching as something people have done around fires, in kitchens and on screens for thirty thousand years.">
<meta name="theme-color" content="#15112A">
<meta property="og:type" content="website">
<meta property="og:title" content="Pass the Spark">
<meta property="og:description" content="A 45-minute animated lesson for nine- and ten-year-olds about the people who pass knowledge on. Nine slides, questions, and a partner challenge.">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Ctext y='.9em' font-size='90'%3E%F0%9F%94%A5%3C/text%3E%3C/svg%3E">
<style>*{margin:0;padding:0}</style>
</head>
<body>
HEAD
  cat pass-the-spark.html
  cat <<'TAIL'
</body>
</html>
TAIL
} > index.html

echo "built index.html ($(wc -c < index.html | tr -d ' ') bytes)"
