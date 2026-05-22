const fs = require('fs');
const content = fs.readFileSync('ts_code.R', 'utf8');
const header = `---\ntitle: "ts_code_mcdc"\nformat: html\neditor: visual\n---\n\n\`\`\`{r}\n`;
const footer = `\n\`\`\`\n`;
fs.writeFileSync('ts_code_mcdc.qmd', header + content + footer);
