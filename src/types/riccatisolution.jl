# Copyright (c) 2026 <Otacilio 'Minho' Neto> and contributors
# This file is part of Riccati.jl, distributed under the MIT License.
# See the LICENSE file in the project root for details.

"""
    AbstractRiccatiSolution

An abstract type for subtyping RiccatiSolution objects.
"""
abstract type AbstractRiccatiSolution end

struct RiccatiSolution{
    Tx<:Matrix{AbstractFloat},Tu<:Matrix{AbstractFloat},Tnu<:Matrix{AbstractFloat}
}
    x::Tx
    u::Tu
    nu::Tnu
    kappa::Float16
end