server <- function(input, output) {
  output$dna <- renderText({
    gene_dna(lemgth = input$n_bases,
             base_probs = c(input$prob_A, input$prob_T, input$prob_C, input$prob_G))
  })
  rna_seq <- reactive({
    transcribe_dna(dna_seq())
  })
  output$rna <- renderText({
    rna_seq()
  })
}