Image Analysis
==============

![image.png](https://raw.github.com/Universefei/podofomemo/master/doc/feifigure/Image.png)

Integrated test code [here](https://github.com/Universefei/podofomemo/tree/master/podofoSRC/feicode)


PdfImage is the derived class of PdfXObject, which is the derived from its base
classes PdfElement and PdfCanvas. This means that you can get and manipulate a
object (like 23 0 obj ... endobj) in a PDF file via operations defined in class 
PdfElement, and utilize operations provided by PdfCanvas( and PdfPainter ) to 
draw image or other miscellies on a PdfPage.


The following Classes are important to draw a image:
* `PdfMemDocument` document-level operations
* `PdfPage` every image must draw on a certain page
* `PdfRect` area of page
* `PdfImage`
* `PdfPainter` provide draw-related operations

## Steps to draw a pic

### Step 1: create a Document
```c
PdfMemDocument document;
...
document.Write( m_sOutputFilename.c_str() );
```
* Construct a document.
* Write file to external storage with specified file name.

### Step 2: create a Page
```c
PdfRect size = CreateStandardPageSize( ePdfPageSize_A4, false );
PdfPage* pPage = document.Createpage( size );
```
* specify Page size. a instance of PdfRect.
* Create a page via invoking document's member function, specifying page size.

### Step 3: create image to draw
```c
PdfImage image( &document );
image.LoadFromFile( m_sImage.c_str() );
```
* Create a image in specified document.
* load image data from external storage.

### Step 4: Draw with Painter
```c
PdfPainter painter;
painter.SetPage( pPage );
painter.DrawImage( dX, dY, &image, dScaleX, dScaleY );
painter.FinishPage();
```
* construct a instance of PdfPainter.
* specify which page to draw.
* Invoke painter's operation to draw.
* FinishPage() must be called once finished drawing a page.


## A simple Example

