local flags_str = "SET(CMAKE_CXX_FLAGS  \"${CMAKE_CXX_FLAGS} "



for _, flag in pairs(project.flags) do
  flags_str = flags_str .. " " .. flag
end

flags_str = flags_str .. "\")\n"


return flags_str

