# cachematric - contains 2 functions for caching an inverse of a matrix
# - makeCacheMatrix
# - cacheSolve
# code style: https://google.github.io/styleguide/Rguide.xml#comments

makeCacheMatrix <- function(x = matrix()) {
    # Create an inverse of the matrix x
    #
    # Args:
    #   x: an invertiable matrix
    # Returns:
    #   a list of functions to interact with the inverse object
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function()
        x
    setInverseMatrix <-
        function(inverse.matrix)
            inv <<- inverse.matrix
    getInverseMatrix <- function()
        inv
    list(
        set = set,
        get = get,
        setInverseMatrix = setInverseMatrix,
        getInverseMatrix = getInverseMatrix
    )
}

cacheSolve <- function(x, ...) {
    # Cache the invese of the matric x and return the inverse of x
    #
    # Args:
    #   x: an invertiable matrix
    # Returns:
    #   the inverse of x
    inv <- x$getInverseMatrix()
    if (!is.null(inv)) {
        message("getting the cached data") # to make sure we get data from cache
        return (inv)
    }
    data <- x$get()
    inverse.matrix <- solve(data, ...)
    x$setInverseMatrix(inverse.matrix)
    inverse.matrix
}

# to run test, run this command source("/path/to/file/run_tests.R") 