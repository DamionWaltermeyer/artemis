#!/bin/sh

for filename in ./*.js; do
    java -jar closure-compiler-*.jar --js $filename --js_output_file ./prod/'prod-'$(basename $filename)
done
