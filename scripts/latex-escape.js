export function latexEscape(str) {
  if (typeof str !== "string") return str;

  return str
    .replace(/\\/g, "\\textbackslash{}")
    .replace(/&/g, "\\&")
    .replace(/%/g, "\\%")
    .replace(/\$/g, "\\$")
    .replace(/#/g, "\\#")
    .replace(/_/g, "\\_")
    .replace(/{/g, "\\{")
    .replace(/}/g, "\\}")
    .replace(/\^/g, "\\^{}")
    .replace(/~/g, "\\~{}")
    .replace(/</g, "\\textless{}")
    .replace(/>/g, "\\textgreater{}")
    .replace(/C\+\+/g, "\\CC")
    .replace(/"/g, "``") // optional
    .replace(/'/g, "`"); // optional
}
