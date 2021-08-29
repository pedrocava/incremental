#' Collect results
#' 
#' 
#' @title collect: yield values from generators and accumulators
#' @param rule 
#' @param position
#' @examples
#'
#' @rdname collect
#' @export collect
#' 
collect <- function(rule, position) {
  UseMethod("collect")
}

#' @return \code{NULL}
#'
#' @rdname collect
#' @method collect incremental_accumulator
#' @S3method collect incremental_accumulator

collect.incremental_accumulator <- function(accumulator, position) {

    if(length(position) == 1) {

        return(purrr::accumulate(1:position, accumulator$rule))

    } else if (length(position) > 1) {

        return(purrr::accumulate(position, accumulator$rule))

    }

}

#' @return \code{NULL}
#'
#' @rdname MyHappyFunction
#' @method collect incremental_generator
#' @S3method collect incremental_generator

collect.incremental_generator <- function(generator, position) {

    if(length(position) == 1) {

        return(purrr::map(1:position, accumulator$rule))

    } else if (length(position) > 1) {

        return(purrr::map(position, accumulator$rule))

    }

}



