using DisplayAs
using Test

@testset "DisplayAs.jl" begin
    @test showable("text/plain", DisplayAs.Text(nothing))
    @test showable("text/html", DisplayAs.HTML(nothing))
    @test showable("text/markdown", DisplayAs.MD(nothing))
    @test showable("image/png", DisplayAs.PNG(nothing))
end

using Aqua
@testset "Aqua" begin
    Aqua.test_all(DisplayAs)
    Aqua.test_ambiguities([DisplayAs, Base])
end
