# Weclome to Active_Suspensions_W_Altair repo!

Hello there!
We are Jacopo Ferretti and Rosario La Rocca, two italian students from EVE (electric vehicle engineering) master degree program at the Muner university. 

In this repository we want to share with the open source community our university project made for the course of vehicles dynamics.

## What is the aim of this project? :car:
The project consists in a suspension comfort evaluation for an electric citycar. To understand it, a quarter car model was implemented in Altair Activate software.

The car chosen is the Italian Fiat 500e, for which we evaluated it’s comfort with the “normal” configuration (motor in the front hood) , comparing it with a proposed “in-wheel motor” configuration. Many more details and information are available in our pdf report (there are not may pages, so it won’t be too long to be read).

Altair Activate, in conjunction with Modelica, turned out to be an useful and simple tool for this case study: using that we have implemented the quarter car model, and we were able to obtain the best suspensions parameters possible thanks to the bobyqa optimization tool.

## why we want to share it here? :octocat:
Apart from the fact that sharing is ALWAYS nice, we decided to leave all the source file here to demonstrate ourselves that it is always possible to learn a new engineering software tool, and we hope that anyone better than us is going to correct any of our mistakes. We are open to any suggestion, pull request, or opening issues… it would be very appreciated!

If you are interested to interact with us, please consider also to have a look at our discussion in the Altair Community HERE: it would be nice to get new ideas and exchange suggestions.

## How to run the simulation?
There are different files in ``/ACTIVATE folder/``, they are very similar.
Every file is going to run multiple simulations in order to find the best value of the active (or passive) suspension parameters.
- ``fiat_500e_active.scm``: Active suspension are implemented, the optimizer is calculating the best PID parameters for active suspension.
- ``fiat_500e_passive.scm``: Only passive suspension is used, optimizer is calulating the best supension parameter ks and cs.
- ``fiat_500e_passive_random_road.scm``: Only passive suspension, it is the same as ``fiat_500e_passive.scm``, but the random road surface is implemented.
- ``fiat_500e_passive_BothCars.scm``: Only passive suspension, it is the same as ``fiat_500e_passive.scm``, but the simulation is going to run on the two different configuration at the same time.
