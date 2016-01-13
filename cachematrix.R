## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
       invmatrix <- NULL
       set <- function(y) {
              x <<- y
              invmatrix <<- NULL
       }
       get <- function() x
       setInvmatrix <- function(InvMatrix) invmatrix <<- InvMatrix
       getInvmatrix <- function() invmatrix
       list(set = set, get = get,
            setInvmatrix = setInvmatrix,
            getInvmatrix = getInvmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       invmatrix <- x$getInvmatrix()              
       if(!is.null(invmatrix)) {
              return(invmatrix)
       }
       matrix <- x$get()
       invmatrix <- solve(matrix, ...)
       x$setInvmatrix(invmatrix)
       invmatrix             
}
