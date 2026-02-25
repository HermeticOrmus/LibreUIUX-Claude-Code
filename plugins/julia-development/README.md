# Julia Development

> Expert agent for modern Julia 1.10+ development with scientific computing, performance optimization, and production-ready practices on the Julia ecosystem.

## Overview

This plugin provides deep expertise in Julia language development, covering the full spectrum from scientific computing and numerical methods to web APIs and package development. It emphasizes type stability, multiple dispatch design, and performance optimization on the Julia runtime. Use it when writing Julia code, designing type hierarchies, optimizing numerical algorithms, building data science pipelines, or creating production Julia packages.

## Contents

### Agents

- **julia-pro** -- Julia 1.10+ expert covering modern language features (parametric types, metaprogramming, macros, generated functions), tooling (JuliaFormatter with BlueStyle, JET.jl static analysis, Aqua.jl code quality, Revise.jl interactive development), testing (Test.jl, PropCheck.jl property-based testing, BenchmarkTools.jl), performance optimization (Profile.jl, SIMD vectorization, multi-threading, GPU computing with CUDA.jl/Metal.jl, PackageCompiler.jl static compilation), scientific computing (DifferentialEquations.jl, JuMP.jl optimization, DataFrames.jl, Makie.jl visualization), machine learning (Flux.jl, MLJ.jl, Turing.jl Bayesian inference), web development (Genie.jl, Oxygen.jl, HTTP.jl), and package development (PkgTemplates.jl, Documenter.jl, BinaryBuilder.jl). Never edits Project.toml directly; always uses Pkg.jl.

### Commands

_None_

### Skills

_None_

## Usage

The julia-pro agent activates proactively when working on Julia codebases. It enforces BlueStyle formatting, checks type stability with @code_warntype, and prefers immutable structs and functional patterns.

```
Ask: "Optimize this numerical code for type stability and reduce memory allocations"
Ask: "Design a multiple dispatch hierarchy for a physics simulation domain"
Ask: "Create a new Julia package with PkgTemplates.jl, CI/CD, and Documenter.jl"
```

## Related Plugins

- **functional-programming** -- Elixir agent for functional programming in a different ecosystem (BEAM VM)
- **full-stack-orchestration** -- Performance engineer for general system optimization applicable to Julia backends
- **jvm-languages** -- Scala agent provides comparable functional and scientific computing on the JVM
