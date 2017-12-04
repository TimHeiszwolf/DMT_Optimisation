# Design of a modern trebuchet optimisation
This repository is a matlab code that was used to optimize a floating arm trebuchet for the course '4GA10 Design of a modern trebuchet 2017-2018Q1' of the TU/e (the Netherlands).
### How do I run the script?
Just want to run the script? Easy:
1. Download the script from this github page.
2. Open the script with [Matlab](https://nl.mathworks.com/products/matlab.html).
3. Run '_Controller_' and follow the instructions.
Also want to edit the script? Be sure to:
1. Run the tests (run '_Testing_') and make sure they pass when an adjustment is made (or the test is adjusted).
2. Make a new test for each new function.
### How does the script work?
![General design flowchart](https://i.imgur.com/JAVAiAV.png)
1. When to program is started ‘_Controller_’ is going to ask ‘_Generate_data_’ for data. This is going to be a list of different combinations of variables for the bruteforcing. It asks the user for input but the user can choose to run with preset variables.
2. ‘_Controller_’ then takes one item from the list of data.
3. ‘_Controller_’ gives the item of the data to ‘_Calculate_Kinetic_Energy_’ and ‘_Calculate_Inertia_’.
4. ‘_Calculate_Kinetic_Energy_’ and ‘_Calculate_Inertia_’ calculate gravitational energy and inertia and return these to ‘_Controller_’.
5. ‘_Controller_’ gives the item of the data and the results of ‘Calculate_Kinetic_Energy’ and ‘_Calculate_Inertia_’ to ‘_Calculate_Velocity_’.
6. ‘_Calculate_Velocity_’ calculates the velocity and returns this to ‘_Controller_’.
7. ‘_Controller_’ gives the item of the data and the result of ‘_Calculate_Velocity_’ to ‘Calculate_Distance’.
8. ‘_Calculate_Distance_’ calculates the distance and returns this to ‘_Controller_’.
9. ‘_Controller_’ stores the result of ‘_Calculate_Velocity_’ and ‘_Calculate_Distance_’ in the item of the data.
10. ‘_Controller_’ overwrites the old item of the data in the data with the item of the data from step 9
11. ‘_Controller_’ repeats step 2 to 10 for each item in the list of data.
12. ‘_Controller_’ ask user if they want to export the raw data. If so it exports the data.
13. ‘_Controller_’ gives ‘_Data_analysis_’ the data.
14. ‘_Data_analysis_’ give the data to ‘_Data_analysis_angle_’.
15. ‘_Data_analysis_angle_’ determines the optimal angle for each configuration of the arms and only returns these optimal data points to ‘_Data_analysis_’.
16. ‘_Data_analysis_’ gives the results form ‘_Data_analysis_angle_’ to ‘_Data_analysis_Parm_’.
17. ‘_Data_analysis_Parm_’ determines the optimal length of the projectile arm for each counter-weight arm and only returns these optimal data points to ‘_Data_analysis_’.
18. ‘_Controller_’ asks the user if they want to export the analysed data. If so it exports the data.

## General design of script
This script was written for a group project but it needed to be semi-profesional so an  (failed) attempt was made to keep it (semi-)profesional.

First of all [SOC](https://en.wikipedia.org/wiki/Separation_of_concerns) needs to be maintained. This means that the script should be divided into parts with each part having its own function and possibly relying on the other parts. Secondly the script should have a clear structure. And lastly the script needs to be written using (a hybrid of) [TDD](https://en.wikipedia.org/wiki/Test-driven_development) (test driven development). To do this (semi-)automatic tests should be written (be)for(e) each function.

Besides this good documentation (in the form of a report, comments (in the code) and good commit messages (on github)) is needed.

The general design is going to be a hybrid between [functional programming](https://en.wikipedia.org/wiki/Functional_programming) and [object-oriented programming](https://en.wikipedia.org/wiki/Object-oriented_programming) (a main ‘object’ stores all the data and functions). This means that the script is going to exist of multiple functions with one function acting as a pseudo object (this function is going to be called the ‘controller’). This design is chosen because it allows flexibility, easy repurposing and easy testing.

The testing is going to be done in a semi-non professional way. Because matlab doesn’t seem to have (easy) automatic testing build in, a crude way is needed. So the test are also going to be functions. Each function has their own test-function. This test-function is going to run the function with a couple of different input methods and compare the results to pre-calculated results. If these pre-calculated results and actual results match, the testing-function will print that it is working. And if it doesn’t match it will print that it is not working correctly. There will also be a controller function for these test functions that just runs all of the tests.
