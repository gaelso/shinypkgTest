#' Home module UI function
#'
#' @noRd
mod_home_UI <- function(id, i18n){

  ## From https://shiny.rstudio.com/articles/modules.html
  # `NS(id)` returns a namespace function, which was save as `ns` and will
  # invoke later.
  ns <- NS(id)

  ##
  ## UI Elements ######
  ##

  ## Hook
  hook_text <- i18n$t("APPNAME does this APPNAME does that")

  hook_img

  footer <- div(
    class = "container footer text-center",
    tags$small(
      "© 2026 MyApp · Developed by ",
      tags$strong("Your Name"),
      " · With the support of XYZ Institute"
    )
  )



  card1 <- card(
    card_header("Welcome"),
    p("
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula
      imperdiet finibus. Sed urna sem, molestie at sodales non, viverra vitae
      mauris.
      "),
  )

  card2 <- card(
    card_header(tags$code("arena-helpers")),
    p("text"),
    tags$a(
      href = "https://openforis.github.io/arena-helpers/",
      alt = "",
      "More on OF Arena",
      bsicons::bs_icon("box-arrow-up-right", class = "text-primary"),
      .noWS = "before-end"
    )
  )

  card3 <- card(
    card_header("{mocaredd}"),
    p("text"),
    p(
      "More on {mocaredd} in:", HTML("&nbsp;"),
      actionButton(inputId = ns("to_about"), label = "About")
      )
  )

  cards <- list(card1, card2, card3)



  ##
  ## UI elements wrapped in a tagList() function ######
  ##

  tagList(

    # HERO SECTION
    div(
      class = "container hero-section",

      div(
        class = "row align-items-center",

        # IMAGE (mobile first)
        div(
          class = "col-md-6 order-1 order-md-2 text-center",
          tags$img(
            src = "assets/landing-img.jpg",
            class = "img-fluid hero-image shadow-sm"
          )
        ),

        # TEXT
        div(
          class = "col-md-6 order-2 order-md-1",

          h1(class = "hero-title", "A Smarter Way to Explore Data"),

          p(
            class = "hero-subtitle mt-3",
            "Transform complex data into clear insights with a beautiful, intuitive interface."
          ),

          br(),

          actionButton(
            "start",
            "Get Started",
            class = "btn btn-primary btn-lg px-4"
          )
        )
      )
    ),

    # FEATURES SECTION
    div(
      class = "container section-padding",

      div(
        class = "row g-4",

        div(
          class = "col-md-4",
          card(
            class = "feature-card shadow-sm",
            card_body(
              h4("Fast & Interactive"),
              p("Real-time data updates and dynamic visualizations.")
            )
          )
        ),

        div(
          class = "col-md-4",
          card(
            class = "feature-card shadow-sm",
            card_body(
              h4("Modern Design"),
              p("Clean layout optimized for desktop and mobile.")
            )
          )
        ),

        div(
          class = "col-md-4",
          card(
            class = "feature-card shadow-sm",
            card_body(
              h4("Powerful Analytics"),
              p("Built with robust R infrastructure and scalable logic.")
            )
          )
        )
      )
    )
  ),

    br(),

    h4(
      icon("arrow-right"), "To start exploring, continue to the:", HTML("&nbsp;"),
      actionButton(inputId = ns("to_tool"), label = "Tool")
    ),

    br(),

    div(
      "{mocaredd}  current version: v1.0.", br(),
      "Development supported by FAO and the Aim4Forest Programme",
      style = "font-style: italic;"
    ),

  ) ## END tagList

} ## END module UI function
