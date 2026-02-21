# library(shiny)
# library(bslib)
#
# ## Make path to images from inst/assets available for the shiny app
# .onLoad <- function(libname, pkgname) {
#   shiny::addResourcePath(
#     prefix = "assets",
#     directoryPath = system.file("assets", package = "shinypkgTest")
#   )
# }
#
# ## Remove path to images for the shiny app when package is not loaded
# .onUnload <- function(libname, pkgname) {
#   shiny::removeResourcePath("assets")
# }
#
# brand_color <- "#4F46E5"  # Change to your brand color if needed
#
# app_footer <- div(
#   class = "container footer text-center",
#   tags$small(
#     "© 2026 MyApp · Developed by ",
#     tags$strong("Your Name"),
#     " · With the support of XYZ Institute"
#   )
# )
#
#
# ui <- page_navbar(
#   theme = bs_theme(
#     version = 5,
#     primary = brand_color,
#     base_font = font_google("Inter")
#   ),
#
#   title = span(class = "fw-bold", "MyApp"),
#   id = "navbar",
#   footer = app_footer,
#   fillable = FALSE,
#
#   tags$head(
#     tags$link(
#       href = "https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap",
#       rel = "stylesheet"
#     ),
#     tags$style(HTML("
#
#       html, body {
#   height: 100%;
# }
#
# body > .container-fluid {
#   min-height: 100vh;
#   display: flex;
#   flex-direction: column;
# }
#
# .bslib-page-navbar > .tab-content {
#   flex: 1 0 auto;
# }
#
#
#
#
#       html {
#         scroll-behavior: smooth;
#       }
#
#       .hero-section {
#         min-height: 75vh;
#         display: flex;
#         align-items: center;
#       }
#
#       .hero-title {
#         font-weight: 700;
#         font-size: 3rem;
#       }
#
#       .hero-subtitle {
#         font-size: 1.25rem;
#         color: #6c757d;
#       }
#
#       .hero-image {
#         max-height: 65vh;
#         width: 100%;
#         object-fit: cover;
#         border-radius: 1.5rem;
#       }
#
#       .feature-card {
#         transition: all 0.2s ease-in-out;
#         border-radius: 1rem;
#       }
#
#       .feature-card:hover {
#         transform: translateY(-6px);
#         box-shadow: 0 1rem 2rem rgba(0,0,0,0.08);
#       }
#
#       .section-padding {
#         padding-top: 5rem;
#         padding-bottom: 5rem;
#       }
#
#       .footer {
#         margin-top: auto;
#         /*padding: 1.5rem 0;*/
#         border-top: 1px solid #e9ecef;
#         font-size: 0.9rem;
#         color: #6c757d;
#       }
#
#       .footer a {
#         color: inherit;
#         text-decoration: none;
#       }
#
#       .footer a:hover {
#         text-decoration: underline;
#       }
#
#     "))
#   ),
#
#   # ---------------- HOME ----------------
#   nav_panel(
#     "Home",
#
#     # HERO SECTION
#     div(
#       class = "container hero-section",
#
#       div(
#         class = "row align-items-center",
#
#         # IMAGE (mobile first)
#         div(
#           class = "col-md-6 order-1 order-md-2 text-center",
#           tags$img(
#             src = "assets/landing-img.jpg",
#             class = "img-fluid hero-image shadow-sm"
#           )
#         ),
#
#         # TEXT
#         div(
#           class = "col-md-6 order-2 order-md-1",
#
#           h1(class = "hero-title", "A Smarter Way to Explore Data"),
#
#           p(
#             class = "hero-subtitle mt-3",
#             "Transform complex data into clear insights with a beautiful, intuitive interface."
#           ),
#
#           br(),
#
#           actionButton(
#             "start",
#             "Get Started",
#             class = "btn btn-primary btn-lg px-4"
#           )
#         )
#       )
#     ),
#
#     # FEATURES SECTION
#     div(
#       class = "container section-padding",
#
#       div(
#         class = "row g-4",
#
#         div(
#           class = "col-md-4",
#           card(
#             class = "feature-card shadow-sm",
#             card_body(
#               h4("Fast & Interactive"),
#               p("Real-time data updates and dynamic visualizations.")
#             )
#           )
#         ),
#
#         div(
#           class = "col-md-4",
#           card(
#             class = "feature-card shadow-sm",
#             card_body(
#               h4("Modern Design"),
#               p("Clean layout optimized for desktop and mobile.")
#             )
#           )
#         ),
#
#         div(
#           class = "col-md-4",
#           card(
#             class = "feature-card shadow-sm",
#             card_body(
#               h4("Powerful Analytics"),
#               p("Built with robust R infrastructure and scalable logic.")
#             )
#           )
#         )
#       )
#     )
#   ),
#
#   # ---------------- ABOUT ----------------
#   nav_panel(
#     "About",
#     div(
#       class = "container section-padding",
#       h2("About This App"),
#       p("This application is built using Shiny and bslib with a modern Bootstrap 5 foundation.")
#     )
#   )
# )
#
# server <- function(input, output, session) {}
#
# shinyApp(ui, server)
