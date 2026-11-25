# Copyright (c) 2026 <Otacilio 'Minho' Neto> and contributors
# This file is part of Riccati.jl, distributed under the MIT License.
# See the LICENSE file in the project root for details.

"""
    AbstractBounds

An abstract type for subtyping RiccatiProblem's lower- and upper-bound vectors.
"""
abstract type AbstractBounds end

struct Bounds{
    Txlb<:VectorOrFloat,Txub<:VectorOrFloat,Tulb<:VectorOrFloat,Tuub<:VectorOrFloat
}
    x_lb::Txlb
    x_ub::Txub
    u_lb::Tulb
    u_ub::Tuub
end