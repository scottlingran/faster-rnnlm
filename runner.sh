rm models/sents

./faster-rnnlm/rnnlm -rnnlm models/sents -train data/sentstrain -valid data/sentsvalid -hidden 300 -threads 8

./faster-rnnlm/rnnlm -rnnlm models/sentsnce -train data/sentstrain -valid data/sentsvalid -hidden 300 -threads 8 -hidden-type gru -nce 20 -alpha 0.01

./faster-rnnlm/rnnlm -rnnlm models/sents -test data/sentstest


# ssh -v ubuntu@52.20.153.148

# ./faster-rnnlm/rnnlm -rnnlm models/sents -train data/sentstrain -valid data/sentsvalid -hidden 1000 -threads 36
