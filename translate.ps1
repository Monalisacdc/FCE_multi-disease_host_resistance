$files = @("ts_code_mcdc.qmd", "pm_code_mcdc.qmd", "rust_code_mcdc.qmd")

$replacements = @{
    "###data set####" = "# Data Loading"
    "#df" = "# Data Loading"
    "###Cleaning" = "# Data Cleaning and Preparation"
    "#cleaning" = "# Data Cleaning and Preparation"
    "###fILTER GENOTYPES THAT WAS EVALUATED IN \>2 LOCAL AND \>3 YEAR#########" = "# Filtering Genotypes Evaluated Across Multiple Environments"
    "#fILTER GENOTYPES THAT WAS EVALUATED IN \>2 LOCAL AND \>3 YEAR" = "# Filtering Genotypes Evaluated Across Multiple Environments"
    "# Filtering the enviromental with sev\>10" = "# Filtering Environments with Final Severity > 10%"
    "###4) Breeder resistance classes (genotype-level)" = "# Breeder Resistance Classes (Scalar-based)"
    "#4) Breeder resistance classes (genotype-level)" = "# Breeder Resistance Classes (Scalar-based)"
    "####filtering cultivars and join" = "# Retaining Selected Genotypes and Joining Breeder Classes"
    "#filtering cultivars and join" = "# Retaining Selected Genotypes and Joining Breeder Classes"
    "#             Selecting the specific time to zadoks " = "# Aligning Disease Progress Curves to Zadoks Growth Scale"
    "#Selecting the specific time to zadoks" = "# Aligning Disease Progress Curves to Zadoks Growth Scale"
    "##################################     Smithson & Verkuilen   ########################################################" = "# Severity Transformation (Smithson & Verkuilen)"
    "#Smithson & Verkuilen" = "# Severity Transformation (Smithson & Verkuilen)"
    "# gam" = "# Hierarchical Generalized Additive Model (HGAM) Fitting"
    "#modelo gam" = "# Hierarchical Generalized Additive Model (HGAM) Fitting"
    "########################   sev       ###################################" = "## Scalar Model (Final Severity)"
    "##sev" = "## Scalar Model (Final Severity)"
    "########### Functional model##############################" = "## Functional Model (Curve Comparison)"
    "##functional" = "## Functional Model (Curve Comparison)"
    "##gen x env" = "## Genotype x Environment Predictions"
    "# 8) Agreement: breeder class vs functional clusters" = "# Agreement: Breeder Class vs Functional Clusters"
    "# 9) Functional separation (R2-like) + PCoA" = "# Functional Separation (R2-like) and PCoA"
    "# 10) Choose k (optional): silhouette + functional R2 + ARI to breeder class" = "# Choosing k (Silhouette, Functional R2, ARI)"
    "# 13) Features from fitted curves: t5, vmax (and tests)" = "# Epidemic Descriptors: t5 and vmax"
    "# t5, vmax (and tests)" = "# Epidemic Descriptors: t5 and vmax"
    "# Juntar classes às médias ajustadas" = "# Joining classes to adjusted means"
    "# Combinações reais de genótipo x ambiente usadas no modelo" = "# Actual Genotype x Environment combinations used in the model"
    "# Grade comum de tempo/Zadoks" = "# Common time/Zadoks grid"
    "# Novo dataframe para predição: geno x env x time" = "# New dataframe for prediction: geno x env x time"
    "# Predição com o GAM salvo dentro do objeto m1" = "# Prediction using the GAM stored in object m1"
    "#conversao da variavel y" = "# conversion of variable y"
    "#remove linhas com na" = "# remove rows with NA"
    "#temp minimo por curva (gen x env)" = "# minimum time per curve (gen x env)"
    "#ARI AACPD" = "# ARI AUDPC"
    "#ARI sev" = "# ARI final severity"
    "###CRAMERS V" = "# Cramér's V"
    "#####################################         AACPD    #############################################" = "## Area Under Disease Progress Curve (AUDPC)"
    "#################################" = ""
    "#                                    FAZENDO MANUAL" = "# Custom adjustments"
    "#####################################################################################################" = ""
    "##########################################################################################" = ""
    "# ============================================================" = ""
    "# 2. Modelo beta para severidade final" = "## Beta regression model for final severity"
}

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content $file -Raw
        foreach ($key in $replacements.Keys) {
            $content = $content.Replace($key, $replacements[$key])
        }
        Set-Content $file -Value $content -NoNewline
    }
}
