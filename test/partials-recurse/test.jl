module test

import Mustache

data = Dict(
    "x"=>"a",
    "y"=>Dict(
        "x"=>"b",
        "y"=>Dict(
            "x"=>"c"
        )
    ),
)

res = Mustache.render_from_file("test.mustache", data)
if (res == nothing)
    print("Failed to parse template")
    exit()
end

@info res

end
