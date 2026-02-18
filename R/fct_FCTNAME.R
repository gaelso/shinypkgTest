#' FUNCTION TITLE
#'
#' @description Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula
#'              imperdiet finibus. Sed urna sem, molestie at sodales non, viverra vitae
#'              mauris.
#'
#' @param .x1 Input 1, number.
#' @param .x2 Input 2, number.

#' @return A number
#'
#' @importFrom rlang .data
#'
#' @examples
#' fct_FCTNAME(1, 1)
#'
#' @export
fct_FCTNAME <- function(.x1, .x2){

  if (!is.numeric(.x1)) return("first input is not a number")
  if (!is.numeric(.x2)) return("second input is not a number")

  if (is.numeric(.x1) & is.numeric(.x2)) sum(.x1, .x2)

}
