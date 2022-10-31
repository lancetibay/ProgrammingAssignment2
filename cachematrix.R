## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## to create a function that generates the inverse of a matrix


makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <_ function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)


}


## Write a short comment describing this function
## to create a function to cache the inverse generated from the above funstion 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       inv <- x$getinverse()
        if(!is.null(inv)) {
                paste("getting cached inverse")
                return(inv)
        }
         data <- x$get()
         inv <- solve(data, ...)
         x$setinverse(inv)
         inv


}

