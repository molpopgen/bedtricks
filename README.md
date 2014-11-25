#Stuff related to bedtools use

##mkgenome.sh

Makes a [genome](http://bedtools.readthedocs.org/en/latest/content/general-usage.html)-format file for bedtools.  Implemented in awk.

For plain-text FASTA file:

```
./mkgenome.sh file > file.genome
```

For a gzipped reference

```
./mkgenome.sh <(gunzip -c file.gz) > file.genome
```