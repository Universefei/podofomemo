#include <podofo.h>
#include <cstdio>
#include <iostream>

using namespace PoDoFo;

void Prompt()
{
	printf("Function Menu:\n");
	printf("==============\n");
	printf("Please input cooresponding number.\n");
	printf("0] Terminate input, Reach the end of output PDF file.\n");
	printf("1] Add a new page inserted image with URI.\n");
	printf("2] Add a new page with a plain text.\n");
	printf("3] Add a new page, and draw some geometories.\n");

} 

void WriteTitle( PdfPage* pPage) 
{
	std::string title;
	cout<<"Input the titile for this page:"<<endl;
	cin<<title;

}


/*---------------------------------------------------------------------------*/
/*                                 drawImg()                                 */
/*---------------------------------------------------------------------------*/
void DrawImg(PdfPage* pPage)
{
	std::string imagePath, imageURI;
	double dX, dY;

	PdfPainter painter;

	/* prompt for user to input */
	cout<<"input the IMAGE PATH"<<endl;
	cin>>imagePath;
	cout<<"input the URI"<<endl;
	cin>>imageURI;

	/* load image */
	PdfImage image( doc );
	image.LoadFromFile( imagePath.c_str() );

	/* check input param pPage */
	if( NULL == pPage )
	{
		cout<<"Usage errer: pPage can not be NULL"<<endl;
	}
	painter.setPage( pPage );

	/* draw image with painter on pPage */
	dScaleX = 150.0 / image.GetWidth();
	dScaleY = 150.0 / image.GetHeight();
	dScale = PDF_MIN( dScaleX, dScaleY );
	if( dScale >= 1 ) 
	{
		dX = (size.GetWidth() - image.GetWidth()) / 2.0;
		dY = (size.GetHeight() - image.GetHeight()) / 2.0;
		painter.DrawImage( dX, dY, &image );
	} 
	else
	{
		if( dScale == dScaleX )
		{
			dX = ( size.GetWidth() - 150.0 ) / 2.0;
			dY = ( size.GetHeight() - image.GetHeight*dScale ) /2.0;
		}
		else
		{
			dX = ( size.GetWidth() - image.GetWidth*dScale ) / 2.0;
			dY = ( size.GetHeight() - 150.0 ) / 2.0;
		}
		painter.DrawImage( dX, dY, &image, dScale, dScale );
	}

	/* add hyperlink  */
	PdfAnnotation* pAnnot = pPage->CreateAnnotation( );
	PdfRect rectAnnot();
	PdfAction eAction();
	eAction.SetURI( iamgeURI );
	pAnnot->SetAction( eAction );

	/* finish page and print prompt infomation */
	painter.FinishPage();
	cout<<"Draw image with URI in new pdf page SUCCESSFULLY!"<<endl;
}

/*---------------------------------------------------------------------------*/
/*                                 drawGeo()                                 */
/*---------------------------------------------------------------------------*/
void DrawGeo( PdfPage* pPage )
{
	PdfPainter painter;
	PdfRect rect;

	/* check input param pPage */
	if( NULL == pPage )
	{
		cout<<"Usage errer: pPage can not be NULL"<<endl;
	}

	painter.setPage( pPage );
	rect = pageToDraw->GetPageSize();

	/* Draw geometries */
	painter.SetStrokingColor( 1.0, 0.0, 0.0 );
	painter.SetStrokeWidth( 3 );
	painter.DrawLine( 0.0, 0.0, rect.GetWidth(), rect.GetHeight() );
	painter.DrawLine( 0.0, rect.GetHeight()/2.0, rect.GetWidth(), rect.GetHeight()/2.0 );
	painter.DrawLine( 0.0, rect.GetHeight(), rect.GetWidth(), rect.GetHeight()/2.0, 0.0 );
	painter.FillRect( 2.0, 2.0, rect.GetWidth()/2.0, rect.GetHeight()/2.0, 200.0, 200.0 );
	painter.DrawRect( rect.GetWidth()/2.0, rect.GetHeight()/2.0, rect.GetWidth()/2.0, 
			rect.GetHeight()/2.0, 100.0, 100.0 );
	painter.DrawEllipse( rect.GetWidth()/2.0, 0, rect.GetWidth()/2.0, rectGetHeight()/2.0 );
	painter.DrawCircle( rect.GetWidth()/2.0, rect.GetHeight()/2.0, 200 );
	
	painter.FinishiPage();
	cout<<"Draw some geometory in new pdf page SUCCESSFULLY!"<<endl;
}

/*---------------------------------------------------------------------------*/
/*                                 drawText()                                */
/*---------------------------------------------------------------------------*/

void DrawText()
{
	PdfPage* pPage = doc.CreatePage();
	painter->SetPage( pPage );
	
	
	painter.FinishiPage();
	cout<<"Draw some Text in new pdf page SUCCESSFULLY!"<<endl;
}

/*---------------------------------------------------------------------------*/
/*                               UnicodeTest()                               */
/*---------------------------------------------------------------------------*/

void CreateUnicodeAnnotationFreeText( PdfPage* pPage, PdfDocument* pDocument )
{
    PdfString sJap(reinterpret_cast<const pdf_utf8*>("「PoDoFo」は今から日本語も話せます。"));
    PdfFont* pFont = pDocument->CreateFont( "Arial Unicode MS", new PdfIdentityEncoding( 0, 0xffff, true ) ); 

    PdfRect rect( 200.0, 200.0, 200.0, 200.0 );
    /*
    PdfXObject xObj( rect, pDocument );
    
    PdfPainter painter;
    painter.SetPage( &xObj );
    painter.SetFont( pFont );
    painter.SetColor( 1.0, 0.0, 0.0 );
    painter.DrawRect( 10.0, 10.0, 100.0, 100.0 );
    painter.DrawText( 100.0, 100.0, sJap );
    painter.FinishPage();
    */

    std::ostringstream  oss;
    oss << "BT" << std::endl << "/" <<   pFont->GetIdentifier().GetName()
        << " "  <<   pFont->GetFontSize()
        << " Tf " << std::endl;

    WriteStringToStream( sJap, oss, pFont );
    oss << "Tj ET" << std::endl;

    PdfDictionary fonts;
    fonts.AddKey(pFont->GetIdentifier().GetName(), pFont->GetObject()->Reference());
    PdfDictionary resources;
    resources.AddKey( PdfName("Fonts"), fonts );

    PdfAnnotation* pAnnotation = 
        pPage->CreateAnnotation( ePdfAnnotation_FreeText, rect );

    PdfString sGerman(reinterpret_cast<const pdf_utf8*>("Unicode Umlauts: ÄÖÜß"));
    pAnnotation->SetTitle( sGerman );
    pAnnotation->SetContents( sJap );
    //pAnnotation->SetAppearanceStream( &xObj );
    pAnnotation->GetObject()->GetDictionary().AddKey( PdfName("DA"), PdfString(oss.str()) );
    pAnnotation->GetObject()->GetDictionary().AddKey( PdfName("DR"), resources );
}

/******************************************************************************
 *                                                                            *
 *                                  main()                                    *
 *                                                                            *
 *****************************************************************************/

int main (int argc, char const* argv[])
{
	int usrcmd;
	bool terminate;

	PdfMemDocument doc;
	PdfPage* pPage;

	printf("Mytest application.\n");
	printf("===================\n");
	printf("Usage:./app [output filename]\n");
	printf("Mytest application.\n");

	while( 1 ) 
	{
		Prompt();
		cin<<usrcmd;
		if( usrcmd != 0 )
		{
			pPage = doc.CreatePage( size );
			WriteTitle( pPage );
		}
		switch( usrcmd ) 
		{
			case 0:
				terminate = true;
				break;
			case 1:
				DrawImg( pPage );
				break;
			case 2:
				DrawText( pPage );
				break;
			case 3:
				DrawGeo( pPage );
				break;
		}
		if( terminate ) 
		{
			break;
		}
	}

	doc.Write(argv[1].c_str());
	return 0;
}
