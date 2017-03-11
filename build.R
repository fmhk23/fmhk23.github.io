knitr::render_jekyll()

local({
  # input/output filenames are passed as two additional arguments to Rscript
  a = commandArgs(TRUE)
  
  knitr::opts_chunk$set(
    fig.path = sprintf('figure/%s/', digest::digest(a[1]))
  )
  
  knitr::opts_knit$set(
    base.url = '/',
    width = 70
  )
  
  knitr::knit(a[1], a[2], quiet = TRUE, encoding = 'UTF-8', envir = .GlobalEnv)
})