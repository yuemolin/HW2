#' Calculate sqrt
#' This is a test function in HW2
#' Molin Yue
#' @param x The input number
#' @return the square root of your input number
#'
#' @export sqrt.2
#' @export
#' @examples
#' sqrt.2(1)
#' sqrt.2(2)
#' @seealso
#' log2
#' @importFrom  rlang abort
sqrt.2 <- function(x){
  if (x<0) {abort("negative input, NA introduced!",class = "invalid_input",val=x)}
  else{return(sqrt(x))}
}
