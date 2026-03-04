#' Get path to state flag
#'
#' @param uf State abbreviation (e.g. "rj")
#' @return File path to flag image
#' @export
geom_flag_uf <- function(mapping = NULL,
                         data = NULL,
                         size = 0.05,
                         ...) {

  ggimage::geom_image(
    mapping = mapping,
    data = data,
    size = size,
    inherit.aes = TRUE,
    ...
  )
}
