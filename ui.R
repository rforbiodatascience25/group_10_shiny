# Define the User Interface (Frontend)
ui <- page_fluid(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Central Dogma"),
      style = "background-color: #f0f0f0; padding: 15px;"
    )),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("About"),
      helpText("An interactive app that demonstrates the Molecular Central Dogma — showing how DNA is transcribed into RNA and translated into proteins.")
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Transcribe DNA to RNA"),
      mainPanel(
        verbatimTextOutput(outputId = "rna")
      ))
))