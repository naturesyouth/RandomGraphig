#!/bin/bash


echo 'digraph "rpmdep" {' > testGraph.dot

cat tmp/*.dot | sort | uniq -u >> testGraph.dot

echo '}' >> testGraph.dot

dot -Tsvg -o output.dot.svg testGraph.dot &
neato -Tsvg -o output.neato.svg testGraph.dot &
twopi -Tsvg -o output.twopi.svg testGraph.dot &
circo -Tsvg -o output.circo.svg testGraph.dot &
fdp -Tsvg -o output.fdp.svg testGraph.dot &
sfdp -Tsvg -o output.sfdp.svg testGraph.dot &
patchwork -Tsvg -o output.patchwork.svg testGraph.dot &
osage -Tsvg -o output.osage.svg testGraph.dot &
