local cmake_str =  ""

if global.cpack_name ~= nil then
    frate.format([[set(CPACK_PACKAGE_NAME "{%name%}")\n]], {name = global.cpack_name})
end
if global.cpack_vendor ~= nil then
    frate.format([[set(CPACK_PACKAGE_VENDOR "{%vendor%}")\n]], {vendor = global.cpack_vendor})
end
if global.cpack_description ~= nil then
    frate.format([[set(CPACK_PACKAGE_DESCRIPTION_FILE "{%description%}")\n]], {description = global.cpack_description})
end
if global.cpack_version ~= nil then
    frate.format([[set(CPACK_PACKAGE_VERSION_MAJOR "{%major%}")\n]], {major = global.cpack_version})
end
if global.cpack_contact ~= nil then
    frate.format([[set(CPACK_PACKAGE_CONTACT "{%contact%}")\n]], {contact = global.cpack_contact})
end
if global.cpack_license ~= nil then
    frate.format([[set(CPACK_RESOURCE_FILE_LICENSE "{%license%}")\n]], {license = global.cpack_license})
end
if global.cpack_readme ~= nil then
    frate.format([[set(CPACK_RESOURCE_FILE_README "{%readme%}")\n]], {readme = global.cpack_readme})
end






return cmake_str
