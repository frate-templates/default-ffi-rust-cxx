local cache_str = ""


cache_str = cache_str .. "find_program(SCCACHE_FOUND sccache)\n"
cache_str = cache_str .. "if(SCCACHE_FOUND)\n"
cache_str = cache_str .. "  set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE sccache)\n"
cache_str = cache_str .. "  set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK sccache)\n"
cache_str = cache_str .. " set(CMAKE_C_COMPILER_LAUNCHER sccache)\n"
cache_str = cache_str .. " set(CMAKE_CXX_COMPILER_LAUNCHER sccache)\n"
cache_str = cache_str .. "else()\n"
cache_str = cache_str .. "  message(WARNING \"sccache not found\")\n"
cache_str = cache_str .. "endif()\n"

return cache_str
