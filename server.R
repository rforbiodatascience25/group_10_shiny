# Define the Server (Backend)
server <- function(input, output) {
  dna_seq <- reactive({
    gene_dna(length = input$n_bases,
             base_probs = c(input$prob_A, input$prob_T, input$prob_G, input$prob_C))
  })
  output$dna <-  renderText({
    dna_seq()
  })
  
  rna_seq <- reactive({
    transcribe_dna(dna_seq())
  })
  output$rna <- renderText({
    rna_seq()
  })
  
  protein_seq <- reactive({
    translate_rna(rna_seq())
  })
  output$protein <- renderText({
    protein_seq()
  })
  
  output$freqtab <- renderTable({
    base_freqs(dna_seq())
  })
}