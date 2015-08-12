### Algorithms

Mikolov's rnnlm with class-based softmax

Edrenkin's rnnlm with HS from kaldi project

faster-rnnlm with hierarchical softmax

faster-rnnlm with noise contrastive estimation (NCE)

### Comparison

models with class-based softmax can achieve a little lower entropy then models hierarchical softmax, their training is infeaseble for large vocabularies

On the other hand, NCE speed doesn't depend on the size of the vobaculary

Whats more, models trained with NCE is comparable with class-based models in terms of resulting entropy.
