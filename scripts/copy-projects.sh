#!/usr/bin/bash
cd "$(dirname "$0")/.."

# Copy projects.generated.ts to project folder
cp content/projects/projects.generated.ts personal-site/app/projects/
