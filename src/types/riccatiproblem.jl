# Copyright (c) 2026 <Otacilio 'Minho' Neto> and contributors
# This file is part of Riccati.jl, distributed under the MIT License.
# See the LICENSE file in the project root for details.

"""
    AbstractRiccatiProblem

An abstract type for subtyping optimization problems handled by Riccati.
"""
abstract type AbstractRiccatiProblem end

"""
    RiccatiProblem()

Creates an instance of a finite-horizon linear-quadratic optimal control problem
    
    min. sum(x[n]'Wx*x[n] + u[n]'Wu*u[n] + 2x[n]'Wz*u[n]) + x[N]'Wf*x[N]
    s.t. x[n+1] = A*x[n] + B*u[n] + w[n], x[0] = x0,
         x_lb <= x[n] <= x_ub,
         u_lb <= u[n] <= u_ub,
         Hx*x[n] + Hu*u[n] - h <= 0.

The problem data must be load after creating the instance using

    ocp = RiccatiProblem()
    set_objective!(OCP, N, Wx, Wu, Wz, Wf)
    set_dynamics!(OCP, A, B)
    set_bounds!(OCP, :x, x_lb, x_ub)    # optional
    set_bounds!(OCP, :u, u_lb, u_ub)    # optional
    set_constraints!(OCP, Hx, Hu, h)    # optional

Use the function `solve!(ocp; x0, w)` to solve the problem and `x,u,nu = ocp.sol` to 
retrieve the solution. In a receding-horizon loop, use `u[:,t] = ocp.sol.u[:,1]`.
"""
struct RiccatiProblem{
    TWGT<:AbstractWeights,
    TDYN<:AbstractDynamics,
    TBND<:AbstractBounds,
    TCNS<:AbstractConstraints,
    TSOL<:AbstractRiccatiSolution,
}
    isSolved::Bool
    N::Int
    Nx::Int
    Nu::Int
    Nh::Int
    weights::TWGT
    dynamics::TDYN
    bounds::TBND
    constraints::TCNS
    sol::TSOL
end
