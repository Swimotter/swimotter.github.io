import fs from "fs";
import path from "path";
import YAML from "yaml";
import ejs from "ejs";

import { latexEscape } from "./latex-escape.js";

const root = path.resolve(path.dirname(new URL(import.meta.url).pathname), "..");

const resumeDir = path.join(root, "content/resume");

const resumeFile = path.join(resumeDir, "resume.yaml");
const templateFile = path.join(resumeDir, "template.tex.ejs")
const outputFile = path.join(resumeDir, "resume.generated.tex");

const yamlFile = fs.readFileSync(resumeFile, "utf8");
const data = YAML.parse(yamlFile);

const template = fs.readFileSync(templateFile, "utf8");

const tex = ejs.render(template, { ...data, latexEscape });

fs.writeFileSync(outputFile, tex);
