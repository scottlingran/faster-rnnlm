SRC=data/concat.txt

n_lines=$(wc -l < $SRC)
main=$(($n_lines / 10 * 8))
side=$(($n_lines / 10 * 2))

head -n $main $SRC > data/concattmp
tail -n $side $SRC > data/concattest

n_lines=$(wc -l < data/concattmp)
main=$(($n_lines / 10 * 8))
side=$(($n_lines / 10 * 2))

head -n $main data/concattmp > data/concattrain
tail -n $side data/concattmp > data/concatvalid

rm data/concattmp
