#!/bin/bash
source /etc/profile
source ~/.profile
fetch_story --toc http://www.fanfiction.net/s/5782108/1/Harry_Potter_and_the_Methods_of_Rationality
perl -pi -e's{<br/>P:.*? U:.*?</p>$}{}g' *
perl -pi -e's{(</p>)(<p>)}{$1\n$2}g' *
perl -pi -e's{(<br/>\s*)([^\n])}{$1\n$2}g' *
git add -A
git commit -m "$(date)"
git push origin master
git push origin master:gh-pages
