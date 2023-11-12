# Markdown Resume Tool

some tools for markdown resume.

## Convert Markdown Resume To PDF
### Usage
1. Github Action    
add github action config in your private repos.           
+ using custom param               
[example](.github/workflows/pandocConvert.yaml)

+ using default param
```
name: Test

on:
  workflow_dispatch:
  push:

jobs:
  convert_resume_to_pdf:
    uses: Dreamer4o4/MarkdownResumeTool/.github/workflows/pandocConvert.yaml@main
    with:
      inputPath: Resume/Resume.md
```

2. Docker Image
```
docker pull ghcr.io/dreamer4o4/markdownresumetool:main

docker run --rm -v ${pwd}:/data ghcr.io/dreamer4o4/markdownresumetool:main "--standalone" "--from=gfm" "--to=html" "--css=./style/github.css" "./input/resume.md" "--output=./output/resume.pdf"
docker run --rm -v ${pwd}:/data ghcr.io/dreamer4o4/markdownresumetool:main       \
                "--standalone"                                                  \
                "--from=gfm" "--to=html" "--css=./style/github.css"             \
                "./input/resume.md" "--output=./output/resume.pdf"              
```