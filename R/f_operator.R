#' transform *sqrt.2()* and *log.2()* into functions that can handle errors
#'
#' @param f function log.2 or sqrt.2
#'
#' @return a function that can handle error return error object
#' @export
#'
#' @examples
#' sqrt.3 = f_operator(sqrt.2)
#' set.seed(2)
#' (y = lapply(runif(2,-10,10), sqrt.3))
#' @importFrom rlang catch_cnd

f_operator = function(f){
  force(f)
  op <- function(x){
    if(x>0){
      f(x)
    }
    else{
      catch_cnd(rlang::abort("invalid_input",.subclass = "invalid_input",invalid_input=x))}
  }
  return(op)}
