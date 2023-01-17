############################################################
### Additional config on Windows with git-bash installed ###
############################################################
import os
if os.name == 'nt':
    from snakemake.shell import shell
    shell.executable(r'C:\Users\rd\AppData\Local\Programs\Git\bin\bash.exe')
    shell.prefix("""
    # Add environmental variables here
    x=123   
    """.strip())
############################################################


rule 報告:
    input:
        "figure/iris.png",
        "data/table.csv",
        dummy = "hello.txt",
        script = "report.qmd"
    output:
        "report.html"
    shell:
        """
        quarto render {input.script} --to html
        rm {input.dummy}
        """

rule 繪圖:
    input:
        "data/iris.csv",
        script = "plot.R"
    output: 
        "figure/iris.png"
    params:
        ""
    shell:
        """
        Rscript {input.script}
        """

rule 表格:
    input:
        "data/iris.csv",
        script = "summary.R"
    output:
        "data/table.csv"
    shell:
        """
        Rscript {input.script}
        """

rule generate_iris_data:
    input:
        "data.R",
    output:
        "data/iris.csv"
    shell:
        """
        Rscript {input[0]} --seed 10
        """


rule World:
    input: "hello.txt"
    output: "world.txt"
    shell: 
        """
        touch {output}
        rm {input}
        """

rule Hello:
    output: "hello.txt"
    shell: "echo 'Hello world!' > {output}"
