# Cabled Array Hack Week 2018

Welcome to the main Github repository for the Cabled Array Hack Week!

Cabled Array Hack Week (CAHW) is a 3-day hack event to be held at the University of Washington School of Oceanography. Participants will learn about open source technologies used to analyze [Ocean Observatories Initiative (OOI)](https://oceanobservatories.org/) [Regional Cabled Array](http://www.interactiveoceans.washington.edu) datasets. Mornings will consist of interactive lectures, and afternoon sessions will involve facilitated exploration of datasets and hands-on software development.


## Web Site

This repo stores the source for the Cabled Array Hack Week [website](https://oceanhackweek.github.io/cabled_array_hw2018/), which is written in [Hugo](https://gohugo.io).

 * The `gh-pages` branch is the website as published.
 * The `master` branch is the Hugo source for the current website.
 * The `next` branch is the Hugo source for the next version of the website.

To create and view a local copy, first
[install Hugo](https://gohugo.io/getting-started/installing/), then:

    git clone https://github.com/oceanhackweek/cabled_array_hw2018.git
    cd cabled_array_hw2018

    git submodule init       # Necessary to get the "ananke" theme
    git submodule update     # Get a local copy of the ananke theme
    hugo server


<!-- ## [Projects Folder](projects) -->
