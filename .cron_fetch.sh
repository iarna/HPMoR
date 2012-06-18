#!/bin/bash
source ~/.profile
fetch_story --toc http://www.fanfiction.net/s/5782108/1/Harry_Potter_and_the_Methods_of_Rationality
perl -pi -e's{<br/>P:.*? U:.*?</p>$}{}g' *
git add -A
git commit -m "$(date)"
git push
