#' Application UI
#'
#' @noRd
app_ui <- function() {

  shinydashboardPlus::dashboardPage(

    header = shinydashboard::dashboardHeader(
      title = 'Flash Card Dashboard', titleWidth = 250,
      shinydashboard::dropdownMenuOutput('notificationMenu'),
      shinydashboard::dropdownMenuOutput('messageMenu'),
      shinydashboard::dropdownMenuOutput('taskMenu')
    ),

    sidebar = shinydashboard::dashboardSidebar(
      width = 250,
      shinydashboard::sidebarSearchForm(
        textId = "searchText", buttonId = "searchButton",
        label = "Search..."
      ),

      shinydashboard::sidebarMenu(id = "tabs",
        shinydashboard::menuItem(text = "Dashboard", tabName = "dashboard", icon = icon("dashboard")),
        shinydashboard::menuItem(text = "Widgets", tabName = "widgets", icon = icon("th")),
        shinydashboard::menuItem(
          text = "Charts", icon = icon("bar-chart-o"),
          shinydashboard::menuSubItem("Sub-item 1", tabName = "subitem1"),
          shinydashboard::menuSubItem("Sub-item 2", tabName = "subitem2"),
          textInput(inputId = 'test_textInput', label = "test_TextInput"),
          numericInput(inputId = 'test_numericInput', label = 'test_numericInput', value = 0),
          sliderInput(inputId = 'test_sliderInput', label = 'test_sliderInput', min = 0, max = 100, value = 0)
        )
      )

    ),

    body = shinydashboard::dashboardBody(
      shinydashboard::tabItems(

        shinydashboard::tabItem(tabName = "dashboard",
            fluidRow(
              shinydashboardPlus::flipBox(
                id = 'flip1', trigger = 'click',
                front = 'FLIP1',
                back = fc_list(title = "Example Title", "a", "b", 345)
              ),

              shinydashboardPlus::flipBox(
                id = 'flip2', trigger = 'click',
                front = 'FLIP2',
                back = fc_list(title = "Example Title", "a", "b", 345, .hsize = '4')
              ),

              shinydashboardPlus::flipBox(
                id = 'flip3', trigger = 'click',
                front = 'FLIP3',
                back = fc_list(title = "Example Title", "a", "b", 345, .ltype = 'ol')
              )
            )
        ),

        shinydashboard::tabItem(tabName = "widgets",
            "widgets"
        ),

        shinydashboard::tabItem(tabName = "subitem1",
            "subitem1"
        ),

        shinydashboard::tabItem(tabName = "subitem2",
            "subitem2"
        )

      )
    ),

    controlbar = NULL,
    footer = NULL

  )

}
