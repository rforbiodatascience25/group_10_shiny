server <- function(input, output) {
  rna_seq <- reactive({
    transcribe_dna(dna_seq())
  })
  output$rna <- renderText({
    rna_seq()
  })
}