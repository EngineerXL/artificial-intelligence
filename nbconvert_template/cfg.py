c = get_config()
c.LatexExporter.template_file = 'template_standalone.tplx'
c.PDFExporter.latex_command = ['pdflatex', '{filename}', '-quiet']
