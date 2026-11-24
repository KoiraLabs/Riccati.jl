<p align="center">
  <img alt="JuMP.jl logo." src="docs/src/assets/logo-with-text-background.svg">
</p>

<p align="center">
    <a href="https://koiralabs.github.io/Riccati.jl/dev/"><img src="https://img.shields.io/badge/docs-online-blue.svg"/></a>
    <a href="https://github.com/invenia/BlueStyle"><img src="https://img.shields.io/badge/code%20style-blue-4495d1.svg"/></a>
    <a href="https://github.com/koiralabs/Riccati.jl/actions/workflows/CI.yml?query=branch%3Amain"><img src="https://github.com/koiralabs/Riccati.jl/actions/workflows/CI.yml/badge.svg?branch=main"/></a>
</p>

---

**Riccati** is a lightweight [Julia](https://julialang.org/) package for formulating and solving optimal control problems at high frequencies by exploring their recursive structure. It is focused on linear-quadratic problems arising from nonlinear receding-horizon control.

## Installation

This package is currently not in the official registry. In order to use **Riccati.jl**, you can add this repository directly:

```julia
using Pkg; Pkg.add(url="https://github.com/KoiraLabs/Riccati.jl")
```

or by entering `]add https://github.com/KoiraLabs/Riccati.jl` in the Julia REPL. 

> [!WARNING]
> This package is under active development. A stable version will be released soon.
