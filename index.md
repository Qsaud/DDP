---
title       : TASI stock market Shiny App  
subtitle    : Presentation
author      : Saud Zabin
job         : R-hacker
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## What is TASI?

it's the Saudi stock market index (Tadawul All Share Index)

### The Data :

the data was downloded from google finance :
http://www.google.com/finance/historical?q=TADAWUL%3ATASI&ei=Gw3FVKn4GerGwAP1gIFg&output=csv
in 19th of Januray 2015 .

--- 

### Data Exploration

#### Loading the data:

```r
data <- read.csv("tasi.csv")
dim(data)
```

```
## [1] 247   6
```


#### Let's see the head
 

```r
head(data)
```

```
##        Date    Open    High     Low   Close    Volume
## 1 15-Jan-15 8551.93 8564.56 8449.15 8458.72 276394387
## 2 14-Jan-15 8491.68 8569.54 8490.93 8551.93 297994213
## 3 13-Jan-15 8436.71 8503.49 8268.50 8491.68 292832164
## 4 12-Jan-15 8445.13 8498.40 8388.98 8436.71 337010527
## 5 11-Jan-15 8284.89 8451.01 8277.20 8445.13 260558897
## 6  8-Jan-15 8133.39 8335.34 8133.39 8284.89 316143073
```


---

## The App

Now we want to make an app that shows the TASI performance during 2014 and calculate the most 
important values in that year which are:

1-The highest Volume 

2-The highest Point reached by TASI

3-The Lowest Point reached by TASI

---

## App links:  
  
  
  
##### You can find the my App inthis link:
 https://qsaud.shinyapps.io/tasi6/

#### The complete R script can be found here:
https://github.com/Qsaud/DDP  
  
   
#### ***Thank You***




