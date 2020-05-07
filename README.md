Jontavius Caston
DSC 680
April 23, 2020

Pokémon the Battle to be the Best

The Data
	For this project I will be taking a dive into the world of Pokémon. While preparing for this project I will try and tap back into my child hood a little. The domain will be centered on the world of Pokémon. So in order to help better prepare myself I take this opportunity to go back and visit the world of Pokémon. I will do so by going back and viewing Pokémon cards and checking out some of the Pokémon games such as Pokémon fire, Pokémon Go, Pokémon sword, and Pokémon Shield. The last two games appear to be the more recent games so it should help me get a good look at what has changed and what is new with the world of Pokémon.
	This data set was one that I have played around with before, but all of that analysis was done in python. I have not done much coding within the R programming language so I felt that this would be a great opportunity to experiment a little more with the R programming language and show my versatility in using two different coding language while doing some of the same analysis methods. This also gives me a great chance to see how different the coding can be for the same analysis methods
	The name of the data set is Pokémon, no tricky names here. The data was found on Kaggle. This data set has 1168 observations and 10 variables. The data set also consist of both categorical and numerical data that we will be analyzing. There was one column in particular that I was unsure if I wanted to get rid of or not. So far I have decided to keep the column because there are a couple things I have in mind on how I can incorporate the column permitted that I have enough time to do the analysis before the project is due. After checking out the data set I noticed that one of the major positives about this data set was that there were no missing values here. This data set was great because it left very little data cleaning for us to perform in order for us to get started on our analysis.

What are we looking for
	When I was originally looking for a data set I had no specific motives or questions that I was looking to have answered. It was after I had a good look at the data that I started to formulize some analysis that I could possibly perform during this project. Most of the analysis I will perform are the same as the ones that I performed in python in an original project with this same data set.
•	Correlation 
•	Principle component analysis (PCA)
•	Linear Regression 
•	K Nearest Neighbors
The reasoning for me doing the same analysis as I did in python was:
•	To see my progression in understanding the code 
•	To grow my skills in R programming
•	See if the results are similar to the results I got in python 
•	In hopes to further my original analysis and include some additional analysis. 
The Methods
	 Now we will take a look at the methods that I have performed thus far with the first one being the correlation matrix.
•	Correlation analysis was performed to study the strength of a relationship between two, numerically measured, continuous variables. I performed the correlation on the data set numerical data, and afterwards I used the correlation matrix to get a visual of the correlation in my data. As you can see that the column Total has a higher correlation with most every other column of data. This is pretty normal and expected because each of the columns roll up into the Total column, so there is no real shock here. One of the cool things noted here is that the Attack did not play a role in the Special Attack and the Defense did not play a role in the Special Defense. This means that each Pokémon power level is unique and there are no clear patterns to be found here in figuring out the Pokémon’s power level.
 
 
•	Principal Component Analysis (PCA) can be used to reduce the dimensions of a data set. Dimension reduction is analogous to being philosophically reductionist: It reduces the data down into its basic components, stripping away any unnecessary parts. This was originally hard for me to understand so in simpler terms it is a method of summarizing data. Imagine some wine bottles on a dining table. Each wine is described by its attributes like the color, the strength, the age, etc. But redundancy will arise because many of them will measure related properties. So what PCA will do in this case is summarize each wine in the stock with less characteristics. Below is a snippet of what my PCA looks like
 
Here is the percentage of variation that each PC accounts for
 
Now we will see the variations on a bar plot for visuals sake. The percentages and plot tells us that the PC 1 accounts for almost all of the variation in the data.

 
•	Up next is my Linear Regression Model which is still in works. So stay tuned and check out my final project to see how the rest of the project ends.

Conclusion
	To conclude this paper up, I am enjoying all of the practice that I am getting in perfecting some of the methods in R programming that I have never used or have not used in a long time. The data analysis is going well so far. I have had a couple of drawbacks simply because I had to familiarize myself with the methods that I am using in the analysis. I still have a ways to go before I have finished the assignment, but I hope you enjoy the progress that has been made thus far.

Works Cited
Principal Component Analysis 4 Dummies: Eigenvectors, Eigenvalues and Dimension Reduction. (2019, August 29). Retrieved from https://georgemdallas.wordpress.com/2013/10/30/principal-component-analysis-4-dummies-eigenvectors-eigenvalues-and-dimension-reduction/
Principal Component Analysis Tutorial. (n.d.). Retrieved from https://www.dezyre.com/data-science-in-python-tutorial/principal-component-analysis-tutorial
