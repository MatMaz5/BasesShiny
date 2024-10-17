library(shiny)
library(bslib)
library(bsicons)

# Définition de l'UI
ui <- page_sidebar(
  title = "Titre de l'appli",
  sidebar = sidebar(
    "Shiny is available on CRAN, so you...",
    code('install.packages("shiny")'),
    position = "left"), # position = "left", ou "right"
  value_box(
    title = "Infos mise en valeur",
    value = "ceci est important",
    showcase = bs_icon("award-fill"), # ajouter une icone, Cf help
    theme = "blue" # couleur de la case
  ),
  card(
    card_header("Introducing Shiny"),
    card_body("Shiny is a package [...] visit the Shiny page (https://shiny.posit.co)."),
    card_image("~/Master/GitHub/BasesShiny/app_2/image_shiny.jpeg", width = "50%"),
    card_footer("Shiny is a Posit's product.") # pied de page de l'encadré
    )
)



# Définition du server logic
server <- function(input, output) {
  
}


# Lancer l'appli
shinyApp(ui = ui, server = server)



