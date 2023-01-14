## Use Cases: Particle Specialists

### As a particle specialist I:

* Am very familiar with particle based methods.
* May not be familiar with FEM implementation details but have a working understanding of the approach.
* May not be familiar with low level languages.
* May not be familiar with HPC hardware and architectures.
* Understand how to describe complex physical processes such as radiation, recombination, ionisation, charge exchange using both particle and FEM data.
* May not have applied UQ techniques before but may have an understanding of distributions/ensembles from statistical mechanics.

### Want to:
  
* Describe particle based operations both collectively and per particle, e.g.
  * Creation and deletion of particles potentially from complex distributions.
  * Computation with particle data - per particle and collectively.
  * Identify groups of particles.
  * Represent arbitrary per particle data.
* Visualise particle and FEM data - snapshots and trajectories.
* Create new finite element functions on appropriate function spaces.
* Add source/sink terms to governing equations (solved with FEM).
* Define particle source and sink regions using the simulation domain geometry.
* Define regions of interest, e.g. surfaces, as part of diagnostics.
* Identify particles near surfaces/points/volumes of interest.
* Create and use global data structures for computation, e.g. diagnostics.
* Represent particle data as FE functions:
    1. Through pointwise projection.
    2. Line integration over particle trajectory.
* Use non-trivial functions in my loops, e.g. erfc, gamma.
* Define functions using expansion coefficients, e.g. ionisation rate function approximated by an exponential expansion.
* Evaluate these functions using both particle and FEM data.
* Describe pairwise operations that implement physical processes.
* Describe and sample from non-trivial statistical distributions.
* Perform simulations in a reproducible manner.

### So that I can:

* Use particles as a kinetic description for plasma and neutrals.
* Represent highly-collisional regimes by fluid approximations.
* Describe plasma-neutral and plasma-plasma interactions.
* Use abstractions/DSLs to write once, run anywhere as much as possible.
* Experiment with models quickly and efficiently.
* Perform ensemble computations and averages.
* Perform UQ and verification.
