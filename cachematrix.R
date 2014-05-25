## Creating the matrix for storage the output values in addtion to a set offunctions which allow the
## correct manipulation of data

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
        x <<- y
        m <<- NULL
}

get <- function() x
        setMatrixCache <- function(mat) m <<- mat
        getMatrixCache <- function() m
        list(set = set, get = get,
             setMatrixCache = setMatrixCache,
             getMatrixCache = getMatrixCache)

}


## Inverse of the matrix

cacheSolve <- function(x, ...) {
       

m <- x$getMatrixCache()
if(!is.null(m)) {
        message("getting cached data")
  			print("check")
        return(m)
}

data <- x$get()
m <- solve(data, ...)
        x$setMatrixCache(m)
        m
}

