project.set_build_command(frate.format([[
cmake -DCMAKE_BUILD_TYPE={%current_mode%}  
make -j {%jobs%} ./{%build_dir%}/{%name%}
]], {
    current_mode = project.current_mode,
    build_dir = project.build_dir,
    name = project.name,
    jobs = plocal.get_requested_jobs()
}))
