## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## makeCacheMatrix is a function that creates a matrix which could cache an inverse of it
makeCacheMatrix <- function(x = matrix()) {
  ##intialize the j   
          j <- NULL   
  
##  define a new function set that assign a new value to the matrix x 
##  incase of new matrix intialize it 
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  
  ##  define a new function get that returns value of matrix arguments 
  get <- function()x
  
  ## to assign value of j in parent environment
  setInverse <- function(inverse) j <<- inverse
  
  ## gets the value of j where called
  getInverse <- function() j 
  l
  ##  in order to refer to the functions with the $ operator
  ist(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix .
## If the inverse has already been calculated (and the matrix has not changed),
## then cacheSolve will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
