

generator <- function(rule) {

    rlang::list2(rule = purrr::as_mapper(rule)) %>%
    structure(class = "incremental_generator")

}