module ModTest
using Pkg

directory = replace(Base.source_path(), "\\" => "/")

function add_package()
    splits = split(directory, "/")
    env = join(splits[1:length(splits) - 2], '/')
    Pkg.activate(env)
    Pkg.add("Toolips")
end

function test_package()
    par = Meta.parse("using Toolips")
    eval(par)
end

end # module ModTest