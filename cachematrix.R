## Put comments here that give an overall description of what your
## functions do

## Below function takes a 2 by 2 matrix as input (x) to create a list, each element of the list can be accessed to perform 
## a particular function.

makeCacheMatrix <- function(x = matrix()) {

m <- NULL
        set <- function(y) {
                x <<- y                
                m <<- NULL
        }
        get <- function()  x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## This function takes a list and outputs inverse of matrix (x) , it stores the inverse in chache for further calls of this function
## until x changed by set function. 

cacheSolve <- function(x, ...) {

       m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
        ## Return a matrix that is the inverse of 'x'
}
