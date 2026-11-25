# Copyright (c) 2026 <Otacilio 'Minho' Neto> and contributors
# This file is part of Riccati.jl, distributed under the MIT License.
# See the LICENSE file in the project root for details.

module Riccati

# Using / Imports
using LinearAlgebra

# Includes
include("types/aliases.jl")
include("types/riccatisolution.jl")
include("types/riccatiproblem.jl")

# Exports
export RiccatiProblem

end # module
