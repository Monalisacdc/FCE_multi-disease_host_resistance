$files = @("ts_code_mcdc.qmd", "pm_code_mcdc.qmd", "rust_code_mcdc.qmd")

$replacements = @{
    "# Tempo para atingir 5% de severidade" = "# Time to reach 5% severity"
    "# Velocidade epidêmica máxima" = "# Maximum epidemic velocity"
    "# Tempo em que ocorre vmax" = "# Time at which vmax occurs"
    "# Por classe baseada em severidade final" = "# By class based on final severity"
    "# 1) matriz de distância (uma vez)" = "# 1) Distance matrix (once)"
    "# Se algum genótipo não tiver classe, restringe D" = "# If any genotype has no class, restrict D"
    "# Silhouette: NA se algum cluster tiver só 1 genótipo" = "# Silhouette: NA if any cluster has only 1 genotype"
    "# ARI com classes baseadas em AACPD" = "# ARI with classes based on AUDPC"
    "# ARI com classes baseadas em severidade final" = "# ARI with classes based on final severity"
    "#tbio audaz" = "# TBIO Audaz"
    "#packages" = "# Packages and Libraries"
    "# filter(!is.na(time)) %>%" = "# filter(!is.na(time)) %>%"
    "# group_by(geno, env, powdery_mildew) %>%" = "# group_by(geno, env, powdery_mildew) %>%"
    "#filter(n_distinct(time) >= 5) %>%" = "#filter(n_distinct(time) >= 5) %>%"
    "#ungroup() %>%" = "#ungroup() %>%"
    "# 2) ordem dos genótipos" = "# 2) order of genotypes"
    "# 3) juntar apenas classe de severidade" = "# 3) join only severity class"
    "# 4) restringir matriz aos genótipos com classe" = "# 4) restrict matrix to genotypes with class"
    "# 5) dendrograma funcional" = "# 5) functional dendrogram"
    "# 6) métricas por k" = "# 6) metrics by k"
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
