## Put comments here that give an overall description of what your
## Assignment 2 functions
## 

## Uses the caching of a variable method

makeCacheMatrix <- function(row = matrixrow(), col=matrixcol) {
  m <- NULL
  set <- function(x, y) {
    
    row <<- x
    col <<- y
    m <<- NULL
  }
  
  
  get <- function() row , col
  setmatrix <- function(matrix) m <<- matrix
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
  
}


##Returns a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
 
  m<-x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  data<-x$get()
  m<-solve(data)
  m
}
