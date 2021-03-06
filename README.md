[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4273760.svg)](https://doi.org/10.5281/zenodo.4273760)
[![Anaconda-Server Badge](https://anaconda.org/bioconda/dagchainer/badges/installer/conda.svg)](https://conda.anaconda.org/bioconda)
[![Anaconda-Server Badge](https://anaconda.org/bioconda/dagchainer/badges/downloads.svg)](https://anaconda.org/bioconda/dagchainer)

# dagchainer
Fork of the DAGchainer project https://sourceforge.net/projects/dagchainer

DAGchainer identifies chains of gene pairs sharing conserved order between genomic regions, by identifying paths through a directed acyclic graph (DAG).

Original Project Admins:

[Joshua Orvis](https://sourceforge.net/u/jorvis/)

[Brian Haas](https://sourceforge.net/u/bhaas/)

Original Project Page:

[http://dagchainer.sourceforge.net/](http://dagchainer.sourceforge.net/)

- only minor changes made to compile on macOS

# Building DAGchainer

```
git clone https://github.com/kullrich/dagchainer.git
export PREFIX="."
cd dagchainer;make clean;make
```

# Building DAGchainer - Bioconda

```
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

conda install dagchainer
```

# Run DAGchainer

```
./dagchainer/bin/run_DAG_chainer.pl
```

# Run Java_XY_plotter

```
./dagchainer/src/Java_XY_plotter/run_XYplot.pl ./dagchainer/src/data_sets/Arabidopsis/Arabidopsis.Release5.matchList.filtered
```

# Example

```
./dagchainer/bin/run_DAG_chainer.pl -i ./dagchainer/src/data_sets/Arabidopsis/Arabidopsis.Release5.matchList.filtered -s -I
less ./dagchainer/src/data_sets/Arabidopsis/Arabidopsis.Release5.matchList.filtered.aligncoords
```

# Manual

see manual and further options here [http://dagchainer.sourceforge.net/](http://dagchainer.sourceforge.net/)

# References

Haas B. J., Delcher A. L., Wortman J. R., and Salzberg S. L. (2004). **DAGchainer: a tool for mining segmental genome duplications and synteny.** *Bioinformatics*, **20(18)**, 3643-3646. [https://doi.org/10.1093/bioinformatics/bth397](https://doi.org/10.1093/bioinformatics/bth397)

