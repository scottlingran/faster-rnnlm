SRC=data/sents.txt

n_lines=$(wc -l < $SRC)
main=$(($n_lines / 10 * 8))
side=$(($n_lines / 10 * 2))

head -n $main $SRC > data/sentstmp
tail -n $side $SRC > data/sentstest

n_lines=$(wc -l < data/sentstmp)
main=$(($n_lines / 10 * 8))
side=$(($n_lines / 10 * 2))

head -n $main data/sentstmp > data/sentstrain
tail -n $side data/sentstmp > data/sentsvalid

rm data/sentstmp
