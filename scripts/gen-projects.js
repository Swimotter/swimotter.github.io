import fs from "fs";
import path from "path";
import YAML from "yaml";

const root = path.resolve(path.dirname(new URL(import.meta.url).pathname), "..");

const projectsDir = path.join(root, "content/projects");
const outputFile = path.join(projectsDir, "projects.generated.ts");

const files = fs.readdirSync(projectsDir).filter((file) => {
  return file.endsWith(".yaml");
});

const projects = files.map((file) => {
  const yamlFile = fs.readFileSync(`${projectsDir}/${file}`, "utf8");
  const data = YAML.parse(yamlFile);

  return {
    page: file.replace(".yaml", ""),
    ...data,
  };
});

const fileContent = `
// AUTO-GENERATED FILE -- DO NOT EDIT

// Priority on a scale of 1-5
// 1: Highest priority
// 5: Lowest priority
export const projects = ${JSON.stringify(projects, null, 2)};
`;

fs.writeFileSync(outputFile, fileContent);
