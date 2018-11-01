module test

import Mustache

data = Dict(
    "x"=>"a",
    "y"=>[
        Dict(
            "x"=>"b",
        ),
        Dict(
            "x"=>"c"
        ),
    ]
)

res = Mustache.render_from_file("test/test.mustache", data)
if (res == nothing)
    print("Failed to parse template")
    exit()
end

@info res

end
