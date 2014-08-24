Important: For use the app on you local machine you have to download all 4 files; project.R, database.RData, ui.R and server.R, all have to be on the same folder.



## Short Explanation

When you release a product, you are maybe interested in what people like about
your product.

I am taking a little data wich contains four elements:

1. General Evaluation
2. Flavor
3. Appearance
3. Smell

It is supoused you can explain General Evaluation with other three elements:

Evaluation~Flavor+Appearance+Smell

I use a tree and random forest models to make a prediction taking hypotetical
values as the input values in shiny:

1. Flavor
2. Appearance
3. Smell

This values goes from 1 to 7 each, where 1 is Terrible, 2 is too bad, 3 is bad, 4 is Not good,not bad, 5 is good, 6 is very good and 7 is excellent.

In shiny application you are going to choose values for Flavor, Appearance and Smell and then the model is going to predict what Evaluation Value you should probably reach with that values.

Let's suppose we have a simple mean model: 

Flavor 3

Appearance 4

Smell 5


This example would give us a final Evaluation of 4.


I also print importance of variables in the model, and just to make it more interesting I add a "Variable noise" section.

In this section you can select which variables you want to have a Uniform noise and you can choose the interval of the noise.


You can apreciate how importances and plot change with this noise.

