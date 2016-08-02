test.examples <- function()
{
    m <-
        makeCacheMatrix(matrix(c(1, 2, 4, 5, 6, 7, 8, 8, 1), nrow = 3, ncol = 3))
    
    expected <-
        matrix(
            c(-2.50, 1.50, -0.50, 2.55, -1.55, 0.65 , -0.40, 0.40, -0.20),
            nrow = 3,
            ncol = 3
        )
    actual <- cacheSolve(m)
    checkEquals(expected, actual)
}
