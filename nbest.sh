MODEL_FILE=ptb.100.100.txt
TEST_FILE=data/play

echo "rnn: logprob"
./faster-rnnlm/rnnlm -rnnlm models/$MODEL_FILE -test $TEST_FILE -nbest -debug 0 | perl -wnE'say for /logprob= (-\d+\.\d+)/g'

echo "rnn: PPL"
./faster-rnnlm/rnnlm -rnnlm models/$MODEL_FILE -test $TEST_FILE -nbest -debug 0 | perl -wnE'say for /ppl= (\d+\.\d+)/g'
