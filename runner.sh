rm models/concat

./faster-rnnlm/rnnlm -rnnlm models/concat -train data/concattrain -valid data/concatvalid -hidden 500 -threads 8

./faster-rnnlm/rnnlm -rnnlm models/concat -test data/concattest
