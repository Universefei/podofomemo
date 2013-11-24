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
* `PdfRect` area to draw
* `PdfImage`
* `PdfPainter` provide draw-related operations

## Steps to draw a pic

### Step 1: create a Document
```
PdfMemDocument document;
```


### Step 2: create a Page
```
PdfRect size = CreateStandardPageSize( ePdfPageSize_A4, false );
PdfPage* pPage = document.Createpage( size );
```

### Step 3: specify Rectangle


### Step 4: create image to draw
```
```


### Step 5: Draw with Painter
```
PdfPainter painter;
painter.SetPage( pPage );
painter.DrawImage();
```
