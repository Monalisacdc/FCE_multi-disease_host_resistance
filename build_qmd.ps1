$content = Get-Content -Path 'ts_code.R' -Raw
$header = "---`ntitle: `"ts_code_mcdc`"`nformat: html`neditor: visual`n---`n`n```{r}"
$footer = "```"
Set-Content -Path 'ts_code_mcdc.qmd' -Value ($header + "`n" + $content + "`n" + $footer)
