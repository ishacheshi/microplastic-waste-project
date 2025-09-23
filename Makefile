# Makefile for microplastic project

# Define variables
RMD_FILE := analysis/microplastic_analysis.Rmd
PDF_FILE := microplastic_final_report.pdf

# Default target
all: $(PDF_FILE)

# Build PDF from Rmd
$(PDF_FILE): $(RMD_FILE)
	Rscript -e "rmarkdown::render('$(RMD_FILE)', output_format = 'pdf_document', output_file='$(PDF_FILE)', output_dir = '.')"

# Clean generated files
clean:
	rm -f $(PDF_FILE)
