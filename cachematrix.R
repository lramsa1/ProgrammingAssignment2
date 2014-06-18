## makeCacheMatrix takes a matrix as an argument and returns 4 functions: set, get, setInverse, and getInverse
## set sets the value of the matrix and sets the inverse matrix variable to NULL
## get returns the value stored in my_matrix
## setInverse sets the value of the inverse matrix
## getInverse returns the value in inverse_matrix

makeCacheMatrix <- function(x = matrix()) {
  
  inverse_matrix <- NULL
  
  set <- function(y){
    my_matrix <<- y
    inverse_matrix <<- NULL
  }
  get <- function() my_matrix
  
  setInverse <- function(inverse) inverse_matrix <<- inverse

  getInverse <- function() inverse_matrix
  
  list(set = set, get = get, setInverse= setInverse, getInverse = getInverse)
}


## cacheSolve takes a list of functions as an argument
## it gets the value of the inverse matrix from makeCacheMatrix
## if there already exists an inverse matrix that matrix is return
## else the function retrieves my_matrix, calculates the inverse, and returns it

cacheSolve <- function(x, ...) {
 
  inverse_matrix <- x$getInverse()
 
  if(!is.null(inverse_matrix)){
    print("retrieving value from cache")
    return(inverse_matrix)
  }
  data <- x$get()
  inverse_matrix <- solve(data)
  x$setInverse(inverse_matrix)
  
  inverse_matrix
}
