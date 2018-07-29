#!/bin/bash
for i in $@
do
base=$(basename $i)
latex $i && dvips ${i%.tex}.dvi
dvips -E* -o ${i%.tex}.eps ${i%.tex}.dvi
rm ${i%.tex}{.dvi,.aux,.log,.tex,-inc.eps}
done
