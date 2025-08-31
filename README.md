# cute-hmm

Small benchmark for hidden Markov language modeling.

Features:
[] Dense HMM
[] Block-sparse HMM
[] Low-rank HMM

## What's the point?
HMMs are not good language models.
Transformers have much better associative recall
and RNNs have continuous state representations which are more expressive.
But HMMs are super easy to implement and give a really nice testbed for some simple GPU performance testing!
