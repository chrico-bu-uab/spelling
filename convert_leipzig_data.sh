#cat data/raw/en*.txt > data/combined.txt
find "$1" -name \*.txt -exec sh -c 'cat {} >> data/tmp.txt' \;
#cut -f 2 data/combined.txt > data/tmp.txt
shuf data/tmp.txt > data/data.txt
rm data/tmp.txt
#rm data/combined.txt
wc -l data/data.txt
