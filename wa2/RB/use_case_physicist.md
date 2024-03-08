Edge boundary tokamak physicist
-------------------------------

They are early career, and to progress they
need to build a professional reputation by publishing papers, supporting
UKAEA's research programmes and supervising students.
They are a competent developer and experienced HPC user, though they do not
gain any credit directly from developing software.

In their research work, they study different models for the tokamak edge, and
so require code flexibility and a user-friendly DSL to allow them to rapidly
prototype different equation sets.
This work would require quick iterations -- perhaps 5 minute simulations
performed on a desktop.
They will also develop their own algorithms and add infrastructure to the code.
While they will do this with an understanding of performance implications,
they would expect to perform these developments at a higher level that raw
performance loops (but at a lower level than the physics model).

They would expect to contribute their changes back to a community repository, 
and also to benefit from changes that other code users have made.
They would be involved in the community -- perhaps raising issues, making and
reviewing PRs, answering queries, and having input into future code releases --
but would not be involved ``project managment'' tasks, like maintaining the
repository.

They will also value a user-friendly interface and active user community when
it comes to working with their students.
In this context it is valuable to have software that will run at a high level
and produce sensible results without needing to specify the details of the
implementation.
This allows the student to learn about physical systems without simultaneously
having to learn the details of numerical implementations.
The active community allows their student to get support and ask (perhaps
trivial) questions without being dependent on their supervisor.

Finally, in support of experiements, they will need to perform high-fidelity
simulations of tokamaks.
These will be highly computationally expensive, either because they are
high-resolution simulations of specific shots, or because they are parameter
scans or UQ campaigns. 
The simulations will be long-running, perhaps in the range of a week to a few
months, on whichever HPC system that they have access to.
The software must therefore be performance portable in order to facilitate high
performance on a range of systems.
The software also needs to be robust to numerical instabilities, hardware node
failures, etc, as one may not have the resource allocation to repeat failed
runs.
