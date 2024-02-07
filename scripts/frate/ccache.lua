local cache_str = [[
CPMAddPackage(
  NAME Ccache.cmake
  GITHUB_REPOSITORY TheLartians/Ccache.cmake
  VERSION 1.2
)
find_program(CCACHE_FOUND ccache)
if(CCACHE_FOUND)
  set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache)
  set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache)
 set(CMAKE_C_COMPILER_LAUNCHER ccache)
 set(CMAKE_CXX_COMPILER_LAUNCHER ccache)
else()
  message(WARNING "ccache not found")
endif()
]]

return cache_str
