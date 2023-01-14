rule 報告:
    input:
        "figure/iris.png",
        "table.csv",
        "report.qmd"
    output:
        "report.html"
    shell:
        """
        quarto render report.qmd --to html
        """


rule 繪圖:
    input:
        "iris.csv",
        "plot.R"
    output: 
        "figure/iris.png"
    params:
        ""
    shell:
        """
        Rscript plot.R
        """

rule 表格:
    input:
        "iris.csv",
        "summary.R"
    output:
        "table.csv"
    shell:
        """
        Rscript summary.R
        """


rule generate_iris_data:
    input:
        "data.R"
    output:
        "iris.csv"
    shell:
        """
        Rscript data.R --seed 10
        """
