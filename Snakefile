rule 報告:
    input:
        "figure/iris.png",
        "data/table.csv",
        dummy = "world.txt",
        script = "report.qmd"
    output:
        "report.html"
    shell:
        """
        rm {input.dummy}
        quarto render {input.script} --to html
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
        rm {input}
        touch {output}
        """

rule Hello:
    output: "hello.txt"
    shell: "echo 'Hello world!' > {output}"



