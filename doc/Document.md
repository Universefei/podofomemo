PDF Document Operations
=======================

**Document-related Class Hierarchy**
![document.png](https://raw.github.com/Universefei/podofomemo/master/doc/feifigure/Document.png)

**NB:** 
- PdfDocument is the core interface for working  with PDF documents.  
- PdfMemDocument is the core class for reading and manipulating PDF file and
  	Writing them back to disk.  
- PdfStreamedDocument is the perferred class for creating new Pdf documents

## PdfDocument

PdfDocument is the core interface for working with PDF documents.

PdfDocument provides easy access to the individual pages in the PDF file and
to certain special dictionaries.

PdfDocument cannot be used directly.

* Use pdfMemDocument whenever you want to change the object structure of a PDF
file.

* When you are only creating PDF files, please use PdfStreamedDocument which is 
usually faster for creating PDFs.


## PdfMemDocument

PdfMemDocument is the core class for reading and manipulating PDF files and
writing them back to disk.

PdfMemDocument was designed to allow easy access to the object structure of a
PDF file.

PdfMemDocument should be used whenever you want to change the object structure
of a PDF file.

When you are only creating PDF files, please use PdfStreamedDocument which is
usually faster for creating PDFs.


## PdfStreamedDocument

PdfStreamedDocument is the preferred class for creating new PDF documents.

Page contents, fonts and images are written to disk as soon as possible and are
not kept in memory. This results in faster document generation and less memory
being used.

One of the design goals of PdfStreamedDocument was to hide the underlying 
object structure of a PDF file as far as possible.

Please use PdfMemDocument if you intend to work on the object structure of a 
PDF file.

