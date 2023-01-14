# snakemake -np  # for dry run (no execution of commands)
snakemake -c4

# Generate dependency graphs between workflows
[[ -f dag.png ]] && rm dag.png
snakemake --dag 報告 | dot -Tpng -Gdpi=300 > dag.png
