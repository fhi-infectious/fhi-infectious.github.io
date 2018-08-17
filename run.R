setwd("/git/fhi-infectious.github.io")

files <- list.files(".",pattern = ".Rmd$")
for(f in files){
  rmarkdown::render(f,output_dir = ".")
}
