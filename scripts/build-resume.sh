#!/usr/bin/bash
cd "$(dirname "$0")/.."

# Compile resume
latexmk -pdf -f -silent -interaction=nonstopmode -jobname=resume/jackson_rubiano_resume resume/resume.tex

# Copy pdf to public folder
cp resume/jackson_rubiano_resume.pdf personal-site/public/resume/
