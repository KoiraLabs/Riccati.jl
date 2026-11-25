# Copyright (c) 2026 <Otacilio 'Minho' Neto> and contributors
# This file is part of Riccati.jl, distributed under the MIT License.
# See the LICENSE file in the project root for details.

"""
    AbstractWeights

An abstract type for subtyping RiccatiProblem's weight matrices.
"""
abstract type AbstractWeights end

struct Weights{TWx<:MatrixOrFloat,TWu<:MatrixOrFloat,TWz<:MatrixOrFloat,TWf<:MatrixOrFloat}
    Wx::TWx
    Wu::TWu
    Wz::TWz
    Wf::TWf
end