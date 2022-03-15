#' Calculate log of a function
#'
#' @param x the input value
#'
#' @return the log value of x
#' @export log.2
#' @export
#'
#' @examples
#' log(2)
log.2 = function(x){
  if (x<0) {rlang::abort("negative input, NA introduced!",class = "invalid_input",val=x)}
  else{return(log(x))}
}
