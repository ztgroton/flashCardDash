
#' List Elements in HTML
#'
#' @param title (character) title for flash card
#' @param ... (r ellipsis) unordered elements
#' @param .hsize (integer) specify header size (1-6)
#' @param .ltype (character) specify list type (ol/ul)
#'
#' @import assertthat
#' @import shiny
#'
#' @return Shiny Tags
#' @export
#'
#' @examples
#' \dontrun{
#'   fc_list(title = "This is the Title", "1", "2")
#' }
fc_list <- function(title, ..., .hsize = '6', .ltype = 'ul') {

  # check function arguments
  if (missing(title)) {stop("`title` is missing")}

  assert_that(
    is.character(title), length(title) == 1,
    msg = "`title` must be character of length 1"
  )

  assert_that(
    is.character(.hsize), length(.hsize) == 1, .hsize %in% as.character(c(1:6)),
    msg = "`.hsize` must be character representation of single integer between 1 & 6"
  )

  assert_that(
    is.character(.ltype), length(.ltype) == 1, .ltype %in% c('ul', 'ol'),
    msg = "`.ltype` must be equal 'ul' or 'ol'"
  )

  # return tags
  tags$div(
    tags[[paste0('h', .hsize)]](title),
    tags[[.ltype]](lapply(list(...), tags$li))
  )

}
