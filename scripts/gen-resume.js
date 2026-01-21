import fs from "fs";
import path from "path";
import YAML from "yaml";
import ejs from "ejs";

import { latexEscape } from "./latex-escape.js";

const root = process.cwd();

const yamlFile = fs.readFileSync(path.join(root, "resume/resume.yaml"), "utf8");
const data = YAML.parse(yamlFile);

const template = fs.readFileSync(
  path.join(root, "resume/template.tex.ejs"),
  "utf8",
);

const tex = ejs.render(template, { ...data, latexEscape });

fs.writeFileSync(path.join(root, "resume/resume.tex"), tex);
