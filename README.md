# cute-hmm

Small benchmark for hidden Markov language modeling.

Features:
- [ ] Dense HMM
- [ ] Block-sparse emission HMM
- [ ] Low-rank + banded HMM

## What's the point?
HMMs are not good language models.
Transformers have much better associative recall
and RNNs have continuous state representations which are more expressive.
But HMMs are super easy to implement and give a really nice testbed for some simple GPU performance testing!

## Running training
TBD

## Brown Clusters
The Block-sparse emission HMMs rely on Brown Clusters to warm-start the emission structure.
We include the Brown Clusters necessary for runnings the HMMs in the `clusters` directory.
To rebuild the clusters, follow these instructions:

1. Clone the Brown Cluster repo from
[github.com/percyliang/brown-cluster](https://github.com/percyliang/brown-cluster)
and install it locally following the directions in the repo.

2. Export `l_cluster` to the path of the `brown-cluster/wcluster` command,
installed in the previous step.
```
export l_cluster=/path/to/brown-cluster/wcluster
```

3. Preprocess the data by flattening the data.
The flattened data is only used for producing the Brown Clusters.
```
python scripts/preprocess_datasets.py
```

4. Run the Brown Cluster script to obtain clusters for PTB and WikiText-2.
```
bash scripts/brown_cluster.sh lm128
bash scripts/brown_cluster.sh w2flm128
```
