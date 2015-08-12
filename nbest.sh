MODEL_FILE=models/concat
TEST_FILE=data/play

python tokenize.py

echo "rnn: logprob"
./faster-rnnlm/rnnlm -rnnlm $MODEL_FILE -test $TEST_FILE | perl -wnE'say for /logprob=(-\d+\.\d+)/g'

echo "rnn: PPL"
./faster-rnnlm/rnnlm -rnnlm $MODEL_FILE -test $TEST_FILE | perl -wnE'say for /ppl=(\d+\.\d+)/g'
