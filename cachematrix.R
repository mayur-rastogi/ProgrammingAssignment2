## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	matinv<-NULL
	getmat<-function(){return(x)}
	setmatinv<-function(inv){mi<<-inv}
	getmatinv<-function(){return(mi)}
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv<-x$getmatinv()
	if(!is.null(inv)){
		print("Inverse exists in the Cache")
		return(inv)
	}
	data<-x$getmat()
	inv<-solve(data)
	x$setmatinv(inv)
	return(inv)
}
