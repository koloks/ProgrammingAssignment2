## makeCacheMatrix is a deliverable for Programming Assignmnet 2 
## the function part of an overall collection deisgned to speed up processing
## this function will utilise a list of functions and is deisgned to capture/store a matrix
## in addition the function is designed to calculate/store a acached value of the ivnerse of the matrix.

makeCacheMatrix <- function(x = matrix()) {


    ## store cache value or null if blank
    
    i <- NULL
    
    ## matrix stored
    

    set <- function(y) {

        x <<- y

        i <<- NULL
}

    ## resolve or return the above matrix
    

    get <- function() x

    setinverse <- function(inverse) i <<- inverse

    getinverse <- function() i
    
    ## a list is returned

    
    list(

        set = set,

        get = get,

        setinverse = setinverse,

        getinverse = getinverse)

}

## cacheSolve returns the inverse of the matrix calculted by makeCacheMatrix
## function will check to see if the inverse is calculated and return it otherwise
## the inverse will be calculated

cacheSolve <- function(x, ...) {

    i <- x$getinverse()

    if(!is.null(i)) {

        message("getting cached data")

        return(i)

    }

    data <- x$get()

    i <- solve(data, ...)

    x$setinverse(i)

    i
}
