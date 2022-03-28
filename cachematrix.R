## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
inv <- NULL

set <- function(mtrx) {
  mat <<- mtrx
  inv <<- NULL
}
get <- function() mat

set.inverse <- function(setinv) inv <<- setinv

get.inverse <- function() inv

list(set = set, get = get,
     set.inverse = set.inverse,
     get.inverse = get.inverse)


## Write a short comment describing this function
#cache solves the inverse of a matrix if already calculated returns cached results instead

cacheSolve <- function(cached.mat, ...) {
  # get the stored inverse
  inv <- cached.mat$get.inverse()
  # if it exists return it
  if(!is.null(inv)) {
    message("getting cached inverse")
    return(inv)
  }
  # else calculate, store and return it
  raw.mat <- cached.mat$get()
  inv <- solve(raw.mat, ...)
  cached.mat$set.inverse(inv)
  
  # returns the inverse
  inv
}
