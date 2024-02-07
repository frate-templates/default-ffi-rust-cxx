local cmake_str =  ""


if globals.cpack.ubuntu == true then
  cmake_str = cmake_str .. [[
set(CPACK_GENERATOR "DEB")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "]] .. globals.cpack.maintainer .. [[")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "]] .. globals.cpack.description .. [[")
set(CPACK_DEBIAN_PACKAGE_SECTION "]] .. globals.cpack.section .. [[")
]]
end



if globals.deb_dependencies ~= nil then
    local deps = ""
    for _, dep in ipairs(globals.deb_dependencies) do
        deps = deps .. dep .. ", "
    end
    cmake_str = cmake_str .. "set(CPACK_DEBIAN_PACKAGE_DEPENDS \"" .. deps .. "\")\n"
end


return cmake_str
