## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inverse_matrix <- NULL
  
  set <- function(y){
    my_matrix <<- y
    inverse_matrix <<- NULL
  }
  get <- function(){
    my_matrix
  }
  setInverse <- function(inverse){
    inverse_matrix <<- inverse
  }
  getInverse <- function() inverse_matrix
  
  list(set = set, get = get, setInverse= setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 
  inverse_matric <- x$getInverse()
 
  if(!is.null(inverse_matrix)){
    print("retrieving value from cache")
    return(inverse_matrix)
  }
  data <- x$get()
  inverse_matrix <- solve(data)
  x$setInverse(inverse_matrix)
  
  inverse_matrix
}
