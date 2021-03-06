@testset "set.jl" begin
    let
        s = AVLSet()
        items = ["anything", "anything2"]
        push!(s, items[1])
        r = collect(s)
        @test length(r) == 1
        @test items[1] in r
        push!(s, items[2])
        r = collect(s)
        @test length(r) == 2
        @test all(items .∈ Ref(s))
        @test all(items .∈ Ref(r)) 
        delete!(s, items[1])
        delete!(s, items[2])
        @test isempty(s)
    end

end