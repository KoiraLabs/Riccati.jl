# Copyright (c) 2026 <Otacilio 'Minho' Neto> and contributors
# This file is part of Riccati.jl, distributed under the MIT License.
# See the LICENSE file in the project root for details.

"""
    AbstractConstraints

An abstract type for subtyping RiccatiProblem's inequality constraints.
"""
abstract type AbstractConstraints end

struct Constraints{THx<:MatrixOrFloat,THu<:MatrixOrFloat,Th<:VectorOrFloat}
    Hx::THx
    Hu::THu
    h::Th
end