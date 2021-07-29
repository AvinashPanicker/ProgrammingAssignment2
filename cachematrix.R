## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function
##makeCacheMatrix is a function which creates a special "matrix" object that can
##cache its inverse for the input

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
##cacheSolve is a function which computes the inverse of the special "matrix"
##returned by makeCacheMatrix above. If the inverse has already been calculated
##,then the cachesolve should retrieve the
##inverse from the cache
