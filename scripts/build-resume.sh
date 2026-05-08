#!/usr/bin/bash
cd "$(dirname "$0")/.."

# Compile resume
latexmk -pdf -f -silent -interaction=nonstopmode -jobname=content/resume/jackson_rubiano_resume content/resume/resume.generated.tex

# Copy pdf to public folder
cp content/resume/jackson_rubiano_resume.pdf personal-site/public/resume/
