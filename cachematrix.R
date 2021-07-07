# Put comments here that give an overall description of what your
# functions do

# The first function used was the main function which is the makeCacheMatrix.
# The function that was used are get, set, getInv, and setInv.
# The main function would be used in computing the inverse in the makeCacheMatrix.

makeCacheMatrix <- function(x = matrix())
  {
    Pao <- NULL
    set <- function(y){
    x <<- y
    Pao <<- NULL
  }
  
    get <- function() {x}
    setInverse <- function(inverse) {Pao <<- inverse}
    getInverse <- function() {Pao}
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


# Write a short comment describing this function
# The function would be used in getting cached data.

cacheSolve <- function(x, ...)
  {
    Pao <- x$getInverse()
    if(!is.null(Pao)){
    message("getting cached data")
    return(Pao)
  }
  mat <- x$get()
  Pao <- solve(mat, ...)
  x$setInverse(Pao)
  Pao # Return a matrix that is the inverse of "x"
}





