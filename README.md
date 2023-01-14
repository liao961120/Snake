An example of a reproducible workflow with Snakemake
====================================================

This is my first experience with [Snakemake][sn].
See `./Snakefile` for the workflow. Run `bash make.sh`
to reproduce everything. 


## Snakemake

I tried to use [GNU Make](https://www.gnu.org/software/make)
for my work to enhance reproducibility and automation,
but got stuck with issues of Chinese characters on GNU Make 
built for Windows. So I tried `Snakemake` and it looks pretty 
good! It is based on Python so fewer cross-platform issues 
should arise. It can generate a 
[DAG](https://en.wikipedia.org/wiki/Directed_acyclic_graph) for 
visualizing dependencies between defined workflows, which is 
pretty cool!

<img src="dag.png" width="38%">


- [Snakemake Website][sn]
- [A YouTube demo of Snakemake](https://www.youtube.com/watch?v=r9PWnEmz_tc)

[sn]: https://snakemake.github.io
