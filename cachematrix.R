## Put comments here that give an overall description of what your
## functions do
## These functions calculates inverse of a matrix and save it in cache.
## if same matrix is passed again, it will get inverse from cache otherwise calculates it

## Write a short comment describing this function
## get, set the matrix and inverse of the matrix

makeCacheMatrix <- function(x=matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function(){
    x
  }
  setinverse <- function(inverse){
    i <<- inverse
  }

  getinverse <- function(){
    i
  }

  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
  
}

## This function checks if matrix has been passed before. if yes, inverse is returned from cache
## otherwise calculates it

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
        message("getting cached data")
        return(i)
        }
        data <- x$get()
        i <- solve(x)
        x$setinverse(i)
        i


        
        
}

