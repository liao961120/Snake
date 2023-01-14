##################################################
####      For a single connected DAG          ####
#### (Runs the 1st rule and its dependencies) ####
##################################################
snakemake -c4

# Generate dependency graphs between workflows
[[ -f figure/dag.png ]] && rm figure/dag.png
snakemake --dag | dot -Tpng -Gdpi=300 > figure/dag.png

# Generate report
# snakemake --report log.html

#################################################
####     For multiple DAGs (unconnected)     ####
#### The top rule of independent workflows   ####
#### need to be specified in the values to   ####
#### be looped.                              ####
#################################################
# for toprule in 報告 Hello; do
#     # snakemake -np  # for dry run (no execution of commands)
#     snakemake -c4 $toprule

#     # Generate dependency graphs between workflows
#     [[ -f figure/dag-"$toprule".png ]] && rm figure/dag-"$toprule".png
#     snakemake --dag $toprule | dot -Tpng -Gdpi=300 > figure/dag-"$toprule".png
# done
