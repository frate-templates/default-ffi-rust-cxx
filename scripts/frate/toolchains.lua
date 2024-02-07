local toolchains_str = ""


for _, toolchain in pairs(project.toolchains) do
  toolchains_str = toolchains_str 
  .. "include(toolchains/" 
  .. toolchain 
  .. ".cmake)\n"
end



return toolchains_str

