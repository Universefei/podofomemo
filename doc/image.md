Image Analysis
==============

![image.png](https://raw.github.com/Universefei/podofomemo/master/doc/feifigure/Image.png)

PdfImage is the derived class of PdfXObject, which is derived from its base
classes PdfElement and PdfCanvas. This means that you can get and manipulate a
object (like 23 0 obj ... endobj) in a PDF file via operations defined in class 
PdfElement, and utilize operations provided by PdfCanvas( and PdfPainter ) to 
draw image or other miscellies on a PdfPage.

The following Classes are important to draw a image:
* `PdfMemDocument` document-level operations
* `PdfPage` every image must draw on a certain page
* `PdfRect` specify area of a page
* `PdfImage`
* `PdfPainter` provide draw-related operations


## Steps to draw a pic

### Step 1: create a Document
```C
PdfMemDocument document;
...
document.Write( m_sOutputFilename.c_str() );
```
* Construct a document.
* Write file to external storage with specified file name.

### Step 2: create a Page
```C
PdfRect size = CreateStandardPageSize( ePdfPageSize_A4, false );
PdfPage* pPage = document.Createpage( size );
```
* specify Page size. a instance of PdfRect.
* Create a page via invoking document's member function, specifying page size.

### Step 3: create image to draw
```C
PdfImage image( &document );
image.LoadFromFile( m_sImage.c_str() );
```
* Create a image in specified document.
* load image data from external storage.

### Step 4: Draw with Painter
```C
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

Integrated example code [here](https://github.com/Universefei/podofomemo/tree/master/podofoSRC/feicode/imgNuri)

```C

void ImageConverter::Work() 
{
	/* create document struct */
    PoDoFo::PdfMemDocument document;

    //std::vector<std::string>::const_iterator it = m_vecImages.begin();
	//auto it = m_vecImages.begin()

	/* default Rectange position and bulk */
	/* A4, Not swap Width and Height */
    PoDoFo::PdfRect size = PoDoFo::PdfPage::CreateStandardPageSize( PoDoFo::ePdfPageSize_A4, false );

    PoDoFo::PdfPainter painter;

	/* enlarge times */
    double dScaleX = 1.0;
    double dScaleY = 1.0;
    double dScale  = 1.0;

	double dX, dY;

/*----- Draw image --------------------------------------------------------------*/

	/*----- load image from external storage to memory pdf document -------------*/
	/* construct a image in a document */
	/* just a object in PDF file */
	PoDoFo::PdfImage image( &document );
	/* load a image per time frome external storage */
	image.LoadFromFile( m_sImage.c_str() );


	/*----- prepare page and painter to draw ------------------------------------*/
	/* just a pointer, allocate a pointer */
	PoDoFo::PdfPage* pPage;
	/* create a page in this document, and specify the page size */
	pPage = document.CreatePage( size ); /* allocate space and return a pointer */
	/* set the page on which the painter should draw */
	painter.SetPage( pPage );

	/*----- set the layout and draw --------------------------------------------*/
	/* determine enlarge times */
	dScaleX = size.GetWidth() / image.GetWidth();
	dScaleY = size.GetHeight() / image.GetHeight();
	dScale  = PoDoFo::PDF_MIN( dScaleX, dScaleY );
	/**Draw
	 * ====
	 * 1] if page Rect can not contain entire image, no matter Width or
	 *    Heigth overflowed, start drawing from left bottom
	 * 2] if page Rect can contain entire image, draw image in the 
	 *    center of the page Rectangle
	 */
	/* if Rect can not include entire image-image is larger than Rectangle */
	/* shrink image to draw */
	if( dScale < 1.0 )  /* image is large */
	{
		/* TODO: optimize the layout */
		/** About PdfPainter.DrawImage()
		 *  ============================
		 *  param 1 : X is left 
		 *  param 2 : Y is bottom 
		 *  param 3 : content(pointer to image) to be drawn
		 *  param 4 : enlarge times of X axis
		 *  param 5 : enlarge times of Y axis
		 *  
		 */
		/* optimized layout */
		if( dScale == dScaleX ) {
			dX = 0.0;
			dY = ( size.GetHeight() - image.GetHeight() * dScale )/2.0;
		}
		else if ( dScale == dScaleY ) {
			dX = ( size.GetWidth() - image.GetWidth() * dScale )/2.0;
			dY = 0.0;
		}
		painter.DrawImage( dX, dY, &image, dScale, dScale );
	}
	/* 
	 * let image to be drawn in the center of the Rect
	 */
	else /* image is small, place in the center */
	{
		/* set start draw coordinate, so that image can be placed in the center of the Rect */
		/* dX: left  dY: bottom */
		dX = (size.GetWidth() - image.GetWidth())/2.0;
		dY = (size.GetHeight() - image.GetHeight())/2.0;
		/* default Scale is 1.0, here the latter 2 params are omitted, using default value */
		painter.DrawImage( dX, dY, &image );
	}

	/* a must operation! one pic per page */
	painter.FinishPage();

/*----- add URI action -----------------------------------------------------------------*/

/*  How to add annotation with URI type
 *  ===================================
 *  1] create PdfAnnotation
 *  2] set properties in PdfAnnotation except /A (Action)
 *  3] create PdfAction
 *  4] Set properties of PdfAction (/S & /URI)
 *  5] related PdfAction to PdfAnnotation
 */

	/* 1] create pdfAnnotation */

	/*  param of PdfRect()
	 *  ==================
	 *  1) left
	 *  2) bottom
	 *  3) width
	 *  4) height
	 */
	
	PoDoFo::PdfAnnotation* pAnnotation = 
		pPage->CreateAnnotation( PoDoFo::ePdfAnnotation_Link, PoDoFo::PdfRect(dX, dY, 
					image.GetWidth()*dScale, image.GetHeight()*dScale) );

    /* 2] Set properties of PdfAnnotation */
	
	/* 3] Create PdfAction */
	PoDoFo::PdfAction eAction( PoDoFo::ePdfAction_URI, &document );
	PoDoFo::PdfAction* pAction = &eAction;

	/* 4] Set URI of the action */
	PoDoFo::PdfString enURI( m_sURI);
	pAction->SetURI( enURI );

	/* 5] binding Action to Annotation */
    pAnnotation->SetAction( eAction );



	/* output file to external storagek, to generate PDF file */
    document.Write( m_sOutputFilename.c_str() );
}
```

