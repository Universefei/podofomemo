Image Analysis
==============

![image.png](https://raw.github.com/Universefei/podofomemo/master/doc/feifigure/Image.png)

Integrated test code [here](https://github.com/Universefei/podofomemo/tree/master/podofoSRC/feicode)


PdfImage is the derived class of PdfXObject, which is the derived class of base
class PdfElement and PdfCanvas. These mean that you can get and manipulate a
object (like 23 0 obj ... endobj) in a PDF file via operations defined in class 
PdfElement, and utilize operations provided by PdfCanvas( and PdfPainter ) to 
draw image or other miscellies on a PdfPage.

The following Classes are important to draw a imgage:
* `PdfMemDocument` document-level operations
* `PdfPage` every image must draw on a certain page
* `PdfImage`
* `PdfPainter` provide draw-related operations
* `PdfRect` area to draw
