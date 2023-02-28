# add standard data
cat data/raw/en*.txt > data/combined.txt
cut -f 2 data/combined.txt > data/tmp.txt

# add extra data
find "$1" -name "$2" -exec sh -c 'cat $1 > data/tmp2.txt' {} \;
uniq data/tmp2.txt >> data/tmp.txt

# do remaining steps
shuf data/tmp.txt > data/data.txt
rm data/tmp2.txt
rm data/tmp.txt
rm data/combined.txt
wc -l data/data.txt
