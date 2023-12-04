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

docker run --rm -v ${pwd}:/data ghcr.io/dreamer4o4/markdownresumetool:main "--standalone" "--from=gfm" "--to=html" "--css=./style/markdown.css" "./input/resume.md" "--output=./output/resume.pdf"
docker run --rm -v ${pwd}:/data ghcr.io/dreamer4o4/markdownresumetool:main      \
                "--standalone"                                                  \
                "--from=gfm" "--to=html" "--css=./style/markdown.css"           \
                "./input/resume.md" "--output=./output/resume.pdf"              
```


### Chinese Font
[Pandoc with Chinese](https://github.com/jgm/pandoc/wiki/Pandoc-with-Chinese)
```
/usr/share/fonts/truetype/arphic/uming.ttc: AR PL UMing TW MBE:style=Light
/usr/share/fonts/truetype/arphic/ukai.ttc: AR PL UKai CN:style=Book
/usr/share/fonts/truetype/arphic/ukai.ttc: AR PL UKai HK:style=Book
/usr/share/fonts/truetype/arphic/ukai.ttc: AR PL UKai TW:style=Book
/usr/share/fonts/truetype/wqy/wqy-microhei.ttc: WenQuanYi Micro Hei,文泉驛微米黑,文泉驿微米黑:style=Regular
/usr/share/fonts/truetype/wqy/wqy-zenhei.ttc: WenQuanYi Zen Hei,文泉驛正黑,文泉驿正黑:style=Regular
/usr/share/fonts/truetype/wqy/wqy-zenhei.ttc: WenQuanYi Zen Hei Sharp,文泉驛點陣正黑,文泉驿点阵正黑:style=Regular
/usr/share/fonts/truetype/arphic/ukai.ttc: AR PL UKai TW MBE:style=Book
/usr/share/fonts/truetype/arphic/uming.ttc: AR PL UMing TW:style=Light
/usr/share/fonts/truetype/wqy/wqy-zenhei.ttc: WenQuanYi Zen Hei Mono,文泉驛等寬正黑,文泉驿等宽正黑:style=Regular
/usr/share/fonts/truetype/arphic/uming.ttc: AR PL UMing CN:style=Light
/usr/share/fonts/truetype/arphic/uming.ttc: AR PL UMing HK:style=Light
/usr/share/fonts/truetype/wqy/wqy-microhei.ttc: WenQuanYi Micro Hei Mono,文泉驛等寬微米黑,文泉驿等宽微米黑:style=Regular
```
