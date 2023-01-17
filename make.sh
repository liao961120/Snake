##################################################
####      For a single connected DAG          ####
#### (Runs the 1st rule and its dependencies) ####
##################################################
snakemake -c

# Generate dependency graphs between workflows
[[ -f figure/dag.png ]] && rm figure/dag.png

if [[ "$OSTYPE" == "msys" ]]; then
    printf "\nBuilding on Windows...\n"
    source ~/.bash_profile
    cd -
    snakemake --dag | 2utf | dot -Tpng -Gdpi=300 > figure/dag.png
else
    snakemake --dag | dot -Tpng -Gdpi=300 > figure/dag.png
fi
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
#     snakemake -c $toprule

#     # Generate dependency graphs between workflows
#     [[ -f figure/dag-"$toprule".png ]] && rm figure/dag-"$toprule".png
#     snakemake --dag $toprule | dot -Tpng -Gdpi=300 > figure/dag-"$toprule".png
# done
