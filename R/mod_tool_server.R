#' Tool module server function
#'
#' @importFrom rlang .data
#'
#' @noRd
mod_tool_server <- function(id, rv) {

  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    ## Sidebar part 1 ######
    observe({
      rv$rv1$user_iris <- iris |>
        filter(is.null(input$species) | Species %in% input$species) |>
        filter(
          Petal.Length >= min(input$petal_length),
          Petal.Length<= max(input$petal_length)
        )
      rv$rv1$shared_iris <- SharedData$new(rv$rv1$user_iris)
    })

    ## Sidebar part 2 ######
    observeEvent(input$btn_panel2, {
      session$sendCustomMessage("activate-tab", list(id = ns("tool_tabs"), value = "tab2"))
    })



    ## Main panels ######

    ## Virtual boxes ======

    output$vb_seplen_mean <- renderUI({
      round(mean(rv$rv1$user_iris$Sepal.Length), 1)
    })

    output$vb_sepwid_mean <- renderUI({
      round(mean(rv$rv1$user_iris$Sepal.Width), 1)
    })

    output$vb_nb_species <- renderUI({
      length(unique(rv$rv1$user_iris$Species))
    })

    ## Panel cards ======
    output$scatter1 <- renderD3scatter({
      d3scatter(rv$rv1$shared_iris, ~Petal.Length, ~Petal.Width, ~Species, width = "100%")
    })

    output$scatter2 <- renderD3scatter({
      d3scatter(rv$rv1$shared_iris, ~Sepal.Length, ~Sepal.Width, ~Species, width = "100%")
    })

    output$summary <- renderPrint({
      df <- rv$rv1$shared_iris$data(withSelection = TRUE) %>%
        filter(selected_ | is.na(selected_)) %>%
        mutate(selected_ = NULL)

      cat(nrow(df), "observation(s) selected\n\n")
      summary(df)
    })

  })

}

