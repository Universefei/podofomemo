#include "ImageConverter.h"

#include <podofo.h>

/*---------------------------------------------------------------------------*/
/*                  constructor (with list construct param)                  */
/*---------------------------------------------------------------------------*/
ImageConverter::ImageConverter() 
{
}

ImageConverter::~ImageConverter() 
{
}

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

	/* traverse all items in vector m_vecImages */
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
		/**About PdfPainter.DrawImage()
		 * ============================
		 * param 1 : X is left of start draw point
		 * param 2 : Y is bottom of start draw point
		 * param 3 : content(pointer to image) to be drawn
		 * param 4 : enlarge times of X axis
		 * param 5 : enlarge times of Y axis
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
	else /* image is small */
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
	PoDoFo::PdfAnnotation* pAnnotation = 
		pPage->CreateAnnotation( PoDoFo::ePdfAnnotation_Link, PoDoFo::PdfRect(dX, dY, 
					dX + image.GetWidth()*dScale, dY + image.GetHeight()*dScale) );

    /* 2] Set properties of PdfAnnotation */
    //pAnnotation->Set()  
	
	/* 3] Create PdfAction */
	PoDoFo::PdfAction eAction( PoDoFo::ePdfAction_URI, &document );
	PoDoFo::PdfAction* pAction = &eAction;

	/* 4] Set URI of the action */
	PoDoFo::PdfString enURI( m_sURI);
	//PoDoFo::PdfString* pURI = &enURI;
	pAction->SetURI( enURI );


	/* 5] binding Action to Annotation */
    pAnnotation->SetAction( eAction );



	/* output file to external storagek, to generate PDF file */
    document.Write( m_sOutputFilename.c_str() );
}

