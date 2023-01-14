Use Cases: Engineers
--------------------

*As a thermomechanical engineer I:*
 
+ work with a large range of open source and proprietary codes which requires
bindings to other tools, e.g.:  
    - FMU
    - Python (iron python and regular)
    - OptiSLang
    - Twinbuilder
+ work with CAD software to generate geometries which I want to propagate through 
my workflow.
+ am interested in heat fluxes in all forms: from time and space averages to high 
 resolution 3D time + data.
+ need to be able iterate on designs quickly and in an automated way.
+ am neither an HPC expert nor a plasma / tokamak physicist. 

*and I want to:*
 
+ know, given a sensible physics model provided by other experts, what the 
transient peak and average heat loads are on plasma facing components.
+ not have to understand software dependencies and be able to install & run 
easily e.g. "in the cloud".
+ be able to configure the software to undertake parameter scans.
+ have a handle on the sensitivity of the solution to the inputs and sources of 
error / uncertainty.
+ be able to re-use the spatio-temporal heat fluxes as a model in more 
thermo-mechanical calculations. This means:  
    - reading in the solution after the calculation.
    - using a fit to the data in the form of e.g. a reduced order model of the heat 
    fluxes, surrogates etc.
    - i.e. be able to export CAD geometries and import solutions back into
engineering tools e.g. Ansys.
+ have reproducible workflows to save & share with colleagues (e.g. databases of 
inputs / outputs / config).
+ export results flexibly to inter-operate with multiple surrogate frameworks.
+ be in the loop with development process so it's possible to keep other 
workflows up to date. 

*so that:*

+ I can design components with colleagues within e.g. STEP.
+ make use of it in combination with proprietary tools that engineers know inside out.
+ be insulated, to a sensible extent, from the complexities of the numerics, 
plasma physics and HPC.


