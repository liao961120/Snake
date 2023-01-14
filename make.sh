# snakemake -np  # for dry run (no execution of commands)
snakemake -c4 報告

# Generate dependency graphs between workflows
[[ -f figure/dag.png ]] && rm figure/dag.png
snakemake --dag 報告 | dot -Tpng -Gdpi=300 > figure/dag.png
