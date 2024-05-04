
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
  shinyApp(
    ui = app_ui,
    server = app_server,
    onStart = onStart,
    options = options,
    enableBookmarking = enableBookmarking,
    uiPattern = uiPattern
  ) -> res
  print(res)
}
