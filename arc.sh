#!/usr/bin/env bash


#pull web with url
curl "https://www.flipkart.com/search?q=graphic%20card&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off" > tmp.html


#its div/if class replace # as dot
{
cat tmp.html | pup 'div._30jeq3 text{}'
cat tmp.html | pup 'a.s1Q9rs text{}'
#cat tmp.html | pup 'div._3LWZlK text{}'
} > data.csv

sed -i 's/,//g' data.csv


