/***************************************************************************
 *   Copyright (C) 2010 by Dominik Seichter                                *
 *   domseichter@web.de                                                    *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/

#include "ImageConverter.h"

#include <podofo.h>

/*---------------------------------------------------------------------------*/
/*                  constructor (with list construct param)                  */
/*---------------------------------------------------------------------------*/
ImageConverter::ImageConverter() 
    : m_bUseImageSize( false )
{
}

ImageConverter::~ImageConverter() 
{
}

void ImageConverter::Work() 
{
	/* create document struct */
    PoDoFo::PdfMemDocument document;

    std::vector<std::string>::const_iterator it = m_vecImages.begin();
	//auto it = m_vecImages.begin()

	/* default Rectange position and bulk */
    PoDoFo::PdfRect size = PoDoFo::PdfPage::CreateStandardPageSize( PoDoFo::ePdfPageSize_A4, false );

    PoDoFo::PdfPainter painter;
	/* enlarge times */
    double dScaleX = 1.0;
    double dScaleY = 1.0;
    double dScale  = 1.0;

	/* traverse all items in vector m_vecImages */
    while( it != m_vecImages.end() ) 
    {
        PoDoFo::PdfPage* pPage;

		/* construct a image in a document */
        PoDoFo::PdfImage image( &document );
		/* load a image per time frome external storage */
        image.LoadFromFile( (*it).c_str() );

        if( m_bUseImageSize ) 
        {
			/* set position of Rect, where image was placed */
            size = PoDoFo::PdfRect( 0.0, 0.0, image.GetWidth(), image.GetHeight() );
        }

		/* create a page in this document */
        pPage = document.CreatePage( size ); /* allocate space and return a pointer */

		/* determine enlarge times */
        dScaleX = size.GetWidth() / image.GetWidth();
        dScaleY = size.GetHeight() / image.GetHeight();
        dScale  = PoDoFo::PDF_MIN( dScaleX, dScaleY );

		/* drow on page pPage */
        painter.SetPage( pPage );

		/* if Rect can not include entire image-image is larger than Rectangle */
		/* shrink image to draw */
        if( dScale < 1.0 ) 
        {
			/* Draw */

			/**About PdfPainter.DrawImage()
			 * ============================
			 * param 1 : X coordinate axis of start draw point
			 * param 2 : Y axis coordinate of start draw point
			 * param 3 : content(pointer to image) to be drawn
			 * param 4 : enlarge times of X axis
			 * param 5 : enlarge times of Y axis
			 * 
			 */
            painter.DrawImage( 0.0, 0.0, &image, dScale, dScale );
        }
		/* image is small
		 * let image to be drawn in the center of the Rect
		 */
        else
        {
			//set start draw coordinate, so that image can be placed in the center of the Rect
            double dX = (size.GetWidth() - image.GetWidth())/2.0;
            double dY = (size.GetHeight() - image.GetHeight())/2.0;
            painter.DrawImage( dX, dY, &image );
        }

		/* one pic per page? */
        painter.FinishPage();

        ++it;
    }

	/* output file to external storage */
    document.Write( m_sOutputFilename.c_str() );
}

