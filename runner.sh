./faster-rnnlm/rnnlm -rnnlm models/concat -train data/concattrain -valid data/concatvalid -hidden 100 -classes 100 -threads 8

./faster-rnnlm/rnnlm -rnnlm models/concat -test data/concattest
