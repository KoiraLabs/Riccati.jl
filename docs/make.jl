using Riccati
using Documenter

DocMeta.setdocmeta!(Riccati, :DocTestSetup, :(using Riccati); recursive=true)

makedocs(;
    modules=[Riccati],
    authors="Otacilio 'Minho' Neto <otacilio.bneto@pm.me>",
    sitename="Riccati.jl",
    format=Documenter.HTML(;
        canonical="https://koiralabs.github.io/Riccati.jl",
        edit_link="main",
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/KoiraLabs/Riccati.jl",
    devbranch="main",
)
