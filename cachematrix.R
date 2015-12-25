## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y) {
    x <<- y
    #x <<- as.matrix(as.numeric(y))
    inverseMatrix <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inverseMatrix <<- inverse
  getinverse <- function() inverseMatrix
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  # Since its not specified explicitly therefore assuming 
  #a square matrix is passed
  #class(x)
  inverseMatrix <- x$getinverse()
  if(!is.null(inverseMatrix)) {
    message("getting cached data.")
    return(inverseMatrix)
  }
  data <- x$get()
  #if(is.matrix(data)==FALSE){data<-as.matrix(as.numeric(data))}
  inverseMatrix <- solve(data)
  x$setinverse(inverseMatrix)
  inverseMatrix
}
