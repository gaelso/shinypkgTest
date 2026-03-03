# # install.packages("crosstalk", type = "source")
# # devtools::install_github("jcheng5/d3scatter")
#
# library(shiny)
# library(crosstalk)
# library(d3scatter)
# library(dplyr)
#
# ui <- fluidPage(
#   selectInput("species", "Species", levels(iris$Species), multiple = TRUE),
#   sliderInput("petal_length", "Petal Length", min = min(iris$Petal.Length), max = max(iris$Petal.Length), value = c(min(iris$Petal.Length), max(iris$Petal.Length))),
#   fluidRow(
#     column(6, d3scatterOutput("scatter1")),
#     column(6, d3scatterOutput("scatter2"))
#   ),
#   h4("Summary of selected data"),
#   verbatimTextOutput("summary")
# )
#
# server <- function(input, output, session) {
#   # Subset the dataset based on user's choice of species
#   user_iris <- reactive({
#     # iris[is.null(input$species) | iris$Species %in% input$species,]
#     iris |>
#       filter(is.null(input$species) | Species %in% input$species) |>
#       filter(Petal.Length >= min(input$petal_length), Petal.Length<= max(input$petal_length))
#   })
#
#   shared_iris <- SharedData$new(user_iris)
#
#   output$scatter1 <- renderD3scatter({
#     d3scatter(shared_iris, ~Petal.Length, ~Petal.Width, ~Species, width = "100%")
#   })
#
#   output$scatter2 <- renderD3scatter({
#     d3scatter(shared_iris, ~Sepal.Length, ~Sepal.Width, ~Species, width = "100%")
#   })
#
#   output$summary <- renderPrint({
#     df <- shared_iris$data(withSelection = TRUE) %>%
#       filter(selected_ | is.na(selected_)) %>%
#       mutate(selected_ = NULL)
#
#     cat(nrow(df), "observation(s) selected\n\n")
#     summary(df)
#   })
# }
#
# shinyApp(ui, server)
