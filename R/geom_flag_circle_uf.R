#' Add Brazilian state flags to ggplot
#'
#' @param uf State abbreviation vector (e.g. c("RJ", "SP"))
#' @return Character vector with file paths
#' @export
get_flag_circle_uf <- function(uf) {
  
  uf <- tolower(uf)
  paths <- vapply(
    uf,
    function(x) {
      p <- system.file("flags_circle", paste0(x, ".png"), package = "ggflagsbr")
      if (p == "") {
        stop("Flag not found for: ", x, call. = FALSE)
      }
      p
    },
    character(1)
  )
  
  paths
}
