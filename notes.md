### Algorithms

Mikolov's rnnlm with class-based softmax

Edrenkin's rnnlm with HS from kaldi project

faster-rnnlm with hierarchical softmax

faster-rnnlm with noise contrastive estimation (NCE)

### Comparison

models with class-based softmax can achieve a little lower entropy then models hierarchical softmax, their training is infeaseble for large vocabularies

On the other hand, NCE speed doesn't depend on the size of the vobaculary

Whats more, models trained with NCE is comparable with class-based models in terms of resulting entropy.


### Results

12Aug
Forgot unk in training
Can't get net PPL

13Aug
(cleaned more, removed singletons not 10k)

h:300; partial rand
logprobnet=-935175.125000
pplnet=152.759714
Test entropy 7.255120

h:1000; full
logprobnet=-37161696.000000
pplnet=112.939462
Test entropy 6.819406
