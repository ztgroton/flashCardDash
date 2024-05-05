#' Application Server
#'
#' @param input,output,session Internal parameters for {shiny}
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {

  output$messageMenu <- shinydashboard::renderMenu({

    #msgs <- apply(messageData, 1, function(row) {
    #  messageItem(from = row[["from"]], message = row[["message"]])
    #})

    #dropdownMenu(type = "messages", .list = msgs)

    # messageItem - from (chr), message (chr), icon (shiny::icon) [shiny::icon('user')], time [NULL], href [NULL], inputId [NULL]
    # notificationItem - text (chr), icon (shiny::icon) [shiny::icon('triangle-exclamation')], status ["success"], href [NULL], inputId [NULL]
    # taskItem - text (chr), value [0], color ["aqua"], href [NULL], inputId [NULL]

    # dropdownMenu - type ["notifications", "messages", "tasks"], ... (*Item)
    # renderMenu, dropdownMenuOutput

    shinydashboard::dropdownMenu(
      type = "messages",
      shinydashboard::messageItem(
        from = "Sales Dept",
        message = "Sales are steady this month."
      ),
      shinydashboard::messageItem(
        from = "New User",
        message = "How do I register?",
        icon = icon("question"),
        time = "13:45"
      ),
      shinydashboard::messageItem(
        from = "Support",
        message = "The new server is ready.",
        icon = icon("life-ring"),
        time = "2014-12-01"
      )
    )

    # sidebarMenu
    # renderMenu, sidebarMenuOutput
    # menuItem, menuSubItem
    # tabItems, tabItem

  })

}
