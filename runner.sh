rm models/concat

./faster-rnnlm/rnnlm -rnnlm models/concat -train data/concattrain -valid data/concatvalid -hidden 300 -threads 8

./faster-rnnlm/rnnlm -rnnlm models/concatnce -train data/concattrain -valid data/concatvalid -hidden 300 -threads 8 -hidden-type gru -nce 20 -alpha 0.01

./faster-rnnlm/rnnlm -rnnlm models/concat -test data/concattest


# ssh -v ubuntu@52.20.153.148
