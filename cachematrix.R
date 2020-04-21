## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	envi<-environment()
	y<-NULL
	
	setmatrix<-function(y){
		x<<-y
		m<<-NULL
	}
	getmatrix<-function() x
	setinverse<-fuction(solve) m <<- solve
	getinverse<-function() m
	getenvi<-function() environment()
	
	list(setmetrix = setmatrix, getmatrix = getmatrix, 
		 setinverse = setinverse, getenvi = getenvi)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-xMat$getinverse()
        if(!is.null(m)){
        	if(xMat$setmatrix()==xMat$getmatrix()){
        		message("getting cached data")
        		matrix<-xMat$get()
        		m<-solve(matrix,...)
        		xMat$setmatrix(m)
        		return(m)
        	}
        y<-xMat$getmatrix()	
        xMat$setmatrix(y)
        m<-solve(y,...)
        m
        }
}
