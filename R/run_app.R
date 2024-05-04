
#' Run the Shiny Application
#'
#' @inheritParams shiny::shinyApp
#' @inherit shiny::runApp description
#' @return An object that represents the app.
#' @export
#'
#' @examples
#' \dontrun{run_app()}
run_app <- function(
    onStart = NULL,
    options = list(),
    enableBookmarking = NULL,
    uiPattern = "/"
    ) {

  if (isFALSE('flashCardDash' %in% (.packages()))){
    pkgload::load_all(
      export_all = FALSE,
      helpers = FALSE,
      attach_testthat = FALSE
    )
  }

  shinyApp(
    ui = app_ui,
    server = app_server,
    onStart = onStart,
    options = options,
    enableBookmarking = enableBookmarking,
    uiPattern = uiPattern
  )
}
