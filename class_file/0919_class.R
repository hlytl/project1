recount_url = "http://bioconductor.org/packages/release/BiocViews.html#___Software"
install.packages("rvest")
library(rvest)
htmlfile = read_html(recount_url)


nds = html_nodes(htmlfile, xpath='//*[@id="biocViews_package_table"]')
dat = html_table(nds)
dat = as.data.frame(dat)
head(dat)
system(".phantomjs scrape-bioc.js")
