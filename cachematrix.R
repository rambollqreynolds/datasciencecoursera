## These function stores a matrix and caches its matrix

## The one below creates a matrix that caches its inverse

makeCacheMatrix <- function(x = matrix()) 
inv<-NULL
set<-function(y) {x<<-y 
inv <<-NULL}

get<-function()x
setInverse<-function(inverse) inv <<- inverse
getInverse<-function()inv
list (Set=set, get=get, setInverse=setInverse, getIntervse= getIntervse)


## This function calculates the inverse of the matrix above and if the inverse was already calculated it retreives the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getInverse()
if (!is.null(inv)){message("getting cached data")
return(inv)}
mat<- x$get()
inv<- solve(mat, ...)
x$setInverse(inv) 
inv
}

