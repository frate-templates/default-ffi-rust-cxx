local modes_str = ""

for _, mode in pairs(project.modes) do
  modes_str = modes_str ..
  "if (CMAKE_BUILD_TYPE STREQUAL \"" 
  .. mode.name 
  .. "\")\n"
  for _, dep in pairs(mode.dependencies) do
    modes_str = modes_str .. "  CPMAddPackage(\n" 
    .. "    NAME " .. dep.name .. "\n"
    .. "    GIT_REPOSITORY " .. dep.git_short .. "\n"
    .. "    GIT_TAG " .. dep.selected_version .. "\n"
    .. "  )\n"
  end
  modes_str = modes_str .. "  set_target_properties(" .. project.name .. " PROPERTIES COMPILE_FLAGS \"${CMAKE_CXX_FLAGS}"
  for _, flag in pairs(mode.flags) do
    modes_str = modes_str .. " " .. flag
  end
  modes_str = modes_str .. "\")\n"
  modes_str = modes_str .. "endif()\n"
end

return modes_str




