
# NetEC-Simulations

This datasets shows inference of WGD events from simulatated WGD scenarios using NetEC, a tool for inferring whole genome duplication (WGD) episodes by reconciling gene trees with species trees or networks. It uses dynamic programming to find the minimum number of duplication episodes that explain the observed gene tree duplications.

For the main software package, refer to:
- https://github.com/ppgorecki/netec

For examples and datasets, refer to:
- https://github.com/ppgorecki/NetEC-Pandanales.git

Financial support was provided by the NCN grant 2023/51/B/ST6/02792.

## Requirements

Download the NetEC repository:

```bash
git clone git@github.com:ppgorecki/netec.git
```

## Input Files

A simulated network and 7 sets of gene trees.

- **Network:** `data/net.nwk`
- **Gene trees:** `data/*.gtrees`

## Results 

The output files by netec (execpt .log) are stored in replicate_1 directory.

## Usage

Execute `run.sh` to start netec analysis. Note that, it will overwrite contents of replicate_1 directory.

The results were used the article "Duplication Episodes in Phylogenetic Networks"

- **The first WGD analysis**

```bash
run.sh replicate_1
```

- **Continue analysis with fixed WGD at node B**
```bash
run.sh replicate_1 fixB
```
