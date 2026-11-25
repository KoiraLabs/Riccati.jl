# Copyright (c) 2026 <Otacilio 'Minho' Neto> and contributors
# This file is part of Riccati.jl, distributed under the MIT License.
# See the LICENSE file in the project root for details.

"""
    AbstractDynamics

An abstract type for subtyping RiccatiProblem's dynamic matrices.
"""
abstract type AbstractDynamics end

struct Dynamics{TA<:MatrixOrFloat,TB<:MatrixOrFloat}
    A::TA
    B::TB
end