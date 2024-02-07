local target_str = ""

for _, target in pairs(project.dependencies) do
  target_str = target_str .. "target_link_libraries(" .. project.name .. " " .. target.target_link .. ")\n"
end
for _, lib in pairs(project.libs) do
  target_str = target_str .. "target_link_libraries(" .. project.name .. " " .. lib .. ")\n"
end
return target_str
