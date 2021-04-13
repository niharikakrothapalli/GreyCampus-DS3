################################################################################
#1.What is the basic difference and similarity between a vector and a matrix?

#Difference : Vector is One dimensional, matrix is multi dimensional
#Similarity: Vector and matrix can store elements of similar data type

#2.What is the basic difference and similarity between a data frame and a matrix?
#Difference :Dataframe can store values of different datatypes whereas matrix stores values of similar datatype.
#Similarity : Not sure

#3.Create a vector using (15, TRUE, "World"). What happened to your result?
vector1 <- c(15,TRUE,"world")
vector1
class(vector1) #character, All the elements are automatically considered as a character

#4.John's scores in the final semester for the three subjects are 95, 91, and 88. The subjects are Statistics, Linear Algebra, and Calculus. Using these create a vector and give names to all elements of the vector based on their subjects.
scores <- c(95, 91, 88)
names(scores) <- c("Statistics", "Linear Algebra", "Calculus")
scores

#5.Please check the types (character or numeric) of the vector you created.

class(vector1) #character
class(scores) #numeric
class(names) #function

#6.You have three students in your class (choose any name you want). You must create a matrix using their score in the above mentioned subjects (question 4) Student 1 (95, 91, and 88), Student 2(96, 94, and 97), Student 3(88, 98, and 85). Create a matrix and label column and row names.
scores_matrix = matrix(c(95,91,88,96,94,97,88,98,85),
                       nrow = 3, byrow = TRUE)
rownames(scores_matrix) <- c("Niharika", "Poornima", "Darahas")
colnames(scores_matrix) <- names(scores)
scores_matrix

#7.Convert the created matrix into a data frame.
class(scores_matrix) #matrix
scores_df <- as.data.frame(scores_matrix)
scores_df
class(scores_df) #data.frame

#8.Create three vectors using five countries (your choice) from the following website. The first vector should be country names, the second vector should be the total number of cases, and the third vector should contain the total number of deaths. Create a data frame using these vectors. 
#https://www.worldometers.info/coronavirus/ 
countries <- c("INDIA", "USA", "BRAZIL", "RUSSIA", "UK")
totalCases <- c(11682440,30526030,11998233,4466153,4301925)
totalDeaths <- c(160181, 555339, 294115, 95391, 126172)
corona_stats_df <- data.frame(countries, totalCases, totalDeaths)
class(corona_stats_df) #"data.frame"

#9.Please read the mtcars data set from R. It is an built-in data set. Please check the structure of the data set. If required, please convert the data into their appropriate data types (character, logical, factor, etc). Save your results as a new data frame using a new name. 
data(mtcars)
str(mtcars)
mtcars$vs <- as.logical(mtcars$vs)
mtcars$am <- as.logical(mtcars$am)
mtcars_modified <- data.frame(mtcars)
