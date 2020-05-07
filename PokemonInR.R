library(xlsx)
library(ggplot2)
library(plotly)
library(ggmap)
library(corrplot)
library(class)
library(caTools)


poke_data <- "C:/Users/lionb/Desktop/pokemon.xlsx"
pokemon <- read.xlsx(poke_data, sheetIndex=1)
pokemon$Type <- factor(pokemon$Type)


print('Here is the structure of the data', str(pokemon))

head(pokemon, n=30)

summary(pokemon)

# Correlation
pokecorr <- pokemon[4:10]
poke_cor <- cor(pokecorr)
poke_cor

# Correlation matrix
corrplot(poke_cor, method = 'color', order = 'hclust')

# Histogram of the Total Column
ggplot(pokemon, aes(x=Total)) + geom_histogram(color = 'black', fill = 'red', binwidth = 60) + labs(title = 'Pokemon.Total Histogram', x = 'total', y = 'Count')

# Standardizing the data
stand_X <- pokemon[c('Total', 'HP', 'Attack', 'Defense', 'SpecialAttack', 'SpecialDefense', 'Speed')]
stand_Y <- pokemon[c('Name', 'Type')]
standSet <- scale(stand_X)
standSet

# Principle Component Analysis
pca <- prcomp(t(stand_X), scale =FALSE)
summary(pca)
pca

# To calculate how much variation in the original data each principle component accounts for.
pca_Var <- pca$sdev^2
pca_Var

# The percentage of variation that each PC accounts for
pca_Var.per <- round(pca_Var/sum(pca_Var)*100, 1)
pca_Var.per
# Plotting the percentage
barplot(pca_Var.per, main = "PCA Variation Percentage", xlab = "Principle Component", ylab = "Percent Variation")
print("The percentage and plot tells us that the PC 1 accoounts for almost all of the variation in the data")


# Dataframe where each row has a sample ID and X/Y coordinates so that we can plot the first 2 PC
pcaFrame <- data.frame(stand_Y=rownames(pca$x), X=pca$x[,1], Y=pca$x[,2])
pcaFrame
ggplot(data=pcaFrame, aes(x=X, y=Y, label =stand_Y)) + geom_text() + xlab(paste("PC1 -", pca_Var.per[1], "%", sep="")) + ylab(paste("PC2 - ", pca_Var.per[2], "%", sep="")) + theme_bw() + ggtitle("My PCA Graph")


# Boxplot to check for outliers
boxplot(pokemon$Total, main="Total", sub=paste("Outlier rows: ", boxplot.stats(cars$Total)$out))  # box plot for 'Total'
boxplot(pokemon$HP, main="HP", sub=paste("Outlier rows: ", boxplot.stats(cars$HP)$out))  # box plot for 'HP'
boxplot(pokemon$Attack, main="Attack", sub=paste("Outlier rows: ", boxplot.stats(cars$Attack)$out))  # box plot for 'Attack'
boxplot(pokemon$Defense, main="Defense", sub=paste("Outlier rows: ", boxplot.stats(cars$Defense)$out))  # box plot for 'Defense'
boxplot(pokemon$SpecialAttack, main="SpecialAttack", sub=paste("Outlier rows: ", boxplot.stats(cars$SpecialAttack)$out))  # box plot for 'SpecialAttack'
boxplot(pokemon$Speed, main="Speed", sub=paste("Outlier rows: ", boxplot.stats(cars$Speed)$out))  # box plot for 'Speed'


# Multiple Linear Regression
lmMod <- lm(Total ~ HP + Attack + Defense + Speed, data = pokemon) # building the model
distPred <- predict(lmMod, test) # predict distance
summary(lmMod)


#KNN Method in use
#Training the Model
set.seed(12345)
pokemon_cont <- pokemon[c('HP', 'Attack', 'Defense', 'Speed')]
training_Target <- pokemon[1:876, 3]
test_Target <- pokemon[877:1168, 3]
split <- sample.split(pokemon_cont, SplitRatio = 0.8)
training_set <- subset(pokemon_cont, split ==TRUE)
test_set <- subset(pokemon_cont, split == FALSE)
length(training_Target)

#Feature Selection
training_set <- scale(training_set) 
test_set <- scale(test_set)
nrow(training_set)
knn_pred29 <- knn(train = training_set, test = test_set, cl = training_Target, k = 29)
knn_pred30 <- knn(train = training_set, test = test_set, cl = training_Target, k = 30)

#making the confusion matrix
cm <- table(test_set[, 1], knn_pred29)
cm
acc <- sum(diag(cm))/length(training_Target)
acc

