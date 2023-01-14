rule 報告:
    input:
        "figure/iris.png",
        "data/table.csv",
        "report.qmd"
    output:
        "report.html"
    shell:
        """
        quarto render report.qmd --to html
        """

rule 繪圖:
    input:
        "data/iris.csv",
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
        "data/iris.csv",
        "summary.R"
    output:
        "data/table.csv"
    shell:
        """
        Rscript summary.R
        """

rule generate_iris_data:
    input:
        "data.R"
    output:
        "data/iris.csv"
    shell:
        """
        Rscript data.R --seed 10
        """
