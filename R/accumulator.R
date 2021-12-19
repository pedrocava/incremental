#'
#' @param rule a two-argument function, a lambda or anything `purrr::as_mapper` can work with
#' 
#' 
#' 
#' @name accumulator
#' 
#' 
#' 

accumulator <- function(rule) {

    rlang::list2(rule = purrr::as_mapper(rule)) %>%
        structure(class = "incremental_accumulator")

}
