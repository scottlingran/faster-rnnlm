MODEL_FILE=models/sents
TEST_FILE=data/play

python prepare.py

# echo "rnn: logprob"
# ./faster-rnnlm/rnnlm -rnnlm $MODEL_FILE -test $TEST_FILE | perl -wnE'say for /logprob=(-\d+\.\d+)/g'

echo "rnn: PPL"
./faster-rnnlm/rnnlm -rnnlm $MODEL_FILE -test $TEST_FILE | perl -wnE'say for /ppl=(\d+\.\d+)/g'
