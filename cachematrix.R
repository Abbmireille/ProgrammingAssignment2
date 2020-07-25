## I have created a makeCacheMatrix  function which  will  cashe
## the inverse of the matrix that you will input  
 

## YOu can input any matrix and it will cashe the inverse of this matrix

  
>makeCacheMatrix<-function(x=Matrix()){
           inv<-NULL
           set<-function(y){
           x<<-y
         inv<<-NULL
           }
      get<-function()x
      setInverse<-function(inverse)
      inv<<-inverse
      getInverse<-function()inv
      list(set=set,
           get=get,
           setInverse=setInverse,
           getInverse=getInverse)
           }



## Here i've got cacheSolve function which will compute
## the inverse of the "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve will retrieve the inverse from the cache
 

>cacheSolve<-function(x,...){
      inv<-x$getInverse()
      if(!is.null(inv)){
      message("getting cached data")
      return(inv)
          }
       mat<-x$get()
       inv<-solve(mat,...)
       x$setInverse(inv)
       inv
          }




