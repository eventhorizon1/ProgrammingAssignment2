## Put comments here that give an overall description of what your
## functions do
# makeCacheMatrix- the ouput is a list from where an element is used in cachesolve to compute the inverse. 
Cachesolve- checks whther the inverse has been solved or not and displays result accordingly. 
## Write a short comment describing this function
Conatains the function for setting and getting the value of the matric and its inverse also.
# the function are converted into lists so that they can be called later for use in Cachesolve
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
 #function for setting the value of the matrix got from the input
        set<- function(y){
        x<<-y
        m<<-NULL
          
        }
 #function for getting the value of the matrix
        get<- function()x
 # function for setting the value of inverse of the matrix to m
        setinverse<- function(inverse) m<<-inverse
 # function for getting the value of inverse of the matrix
        getinverse<- function()m
 
 #making the functions into a list format so that they can be used in cachesolve 
        list(set=set ,get=get  ,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
#Checks the value of the getinverse form the MakeCacheMatrix using an if statement . 
#If statment checks if getinverse is null- if yes then calculates the inverse of the matrix and the setinverse value is now the calculated inverse of the matrix
# if no then skips calculation and simply prints the result.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  #assigning the value of m from the function getinverse which is inside MakeCacheMatrix     
        m <- x$getinverse()
 # checking if the contents are null or not
        if (is.null(m)){
  # if null then calculating the value of inverse of matrix and then setinverse value is set to the calcualted value
        matrix_b <- x$get()
        m<- solve(matrix_b)
        x$setinverse(m)
        m
        }
  # if inverse is already calculated skipping the calcualtion and displaying the result            
        m     

}
