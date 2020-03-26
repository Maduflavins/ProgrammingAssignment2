## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function caches the inverse of a matrix 
## first assigns the inverse to NULL to make space for futher computation then set the matrix(x) to y
## before going to getting and seting the matrix and inverse
makeCacheMatrix <- function(x = matrix()) {
        in_verse <- NULL
        set <- function(y){
                x <<- y
                in_verse <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) in_verse <<- inverse
        getinverse <- function() in_verse
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        in_verse <- x$getinverse()
        if(!is.null(in_verse)){
                message("getting the cached metrix invers")
                return(in_verse)
        }
        data <- x$get()
        in_verse <- solve(data, ...)
        x$setinverse(in_verse)
        in_verse
}
