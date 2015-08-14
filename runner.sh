rm models/sents

./faster-rnnlm/rnnlm -rnnlm models/sents -train data/sentstrain -valid data/sentsvalid -hidden 300 -threads 8

./faster-rnnlm/rnnlm -rnnlm models/sentsnce -train data/sentstrain -valid data/sentsvalid -hidden 300 -threads 8 -hidden-type gru -nce 20 -alpha 0.01

./faster-rnnlm/rnnlm -rnnlm models/sents -test data/sentstest


### SERVER
./faster-rnnlm/rnnlm -rnnlm models/sents -train data/sentstrain -valid data/sentsvalid -hidden 1000 -threads 36
./faster-rnnlm/rnnlm -rnnlm models/sents -test data/sentstest

scp ubuntu@52.20.153.148:/home/ubuntu/faster-rnnlm/models/sents models/
scp ubuntu@52.20.153.148:/home/ubuntu/faster-rnnlm/models/sents.nnet models/

### LOCAL TEST
git checkout scott
./faster-rnnlm/rnnlm -rnnlm models/sents -test data/sentstest
