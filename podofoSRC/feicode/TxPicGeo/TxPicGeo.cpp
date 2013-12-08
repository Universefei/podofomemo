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
	std::cout << "Input the titile for this page:"<<std::endl;
	std::cin >> title;

}


/*---------------------------------------------------------------------------*/
/*                                 drawImg()                                 */
/*---------------------------------------------------------------------------*/
void DrawImg(PdfDocument* pdoc, PdfPage* pPage, PdfPainter* pPainter )
{
	std::string imagePath, imageURI;
	double dX, dY;
	double dScaleX, dScaleY, dScale;
	double bulk;

	/* prompt for user to input */
	std::cout << "input the IMAGE PATH" << std::endl;
	std::cin >> imagePath;
	std::cout << "input the Image scale" << std::endl;
	std::cin >> bulk;
	std::cout << "input the URI" << std::endl;
	std::cin >> imageURI;

	/* load image */
	PdfImage image( pdoc );
	image.LoadFromFile( imagePath.c_str() );

	/* check input param pPage */
	if( NULL == pPage || NULL == pPainter )
	{
		std::cout<<"Usage errer: parameteries can not be NULL"<<std::endl;
	}
	pPainter->SetPage( pPage );
	PdfRect size = pPage->GetPageSize();

	/* draw image with painter on pPage */
	dScaleX = bulk / image.GetWidth();
	dScaleY = bulk / image.GetHeight();
	dScale = PDF_MIN( dScaleX, dScaleY );
	if( dScale >= 1 ) 
	{
		dX = (size.GetWidth() - image.GetWidth()) / 2.0;
		dY = (size.GetHeight() - image.GetHeight()) / 2.0;
		pPainter->DrawImage( dX, dY, &image );
	} 
	else
	{
		if( dScale == dScaleX )
		{
			dX = ( size.GetWidth() - bulk ) / 2.0;
			dY = ( size.GetHeight() - image.GetHeight()*dScale ) /2.0;
		}
		else
		{
			dX = ( size.GetWidth() - image.GetWidth()*dScale ) / 2.0;
			dY = ( size.GetHeight() - bulk ) / 2.0;
		}
		pPainter->DrawImage( dX, dY, &image, dScale, dScale );
	}

	/* specify annotation area  */
	PdfRect rectAnnot( dX, dY, image.GetWidth()*dScale, image.GetHeight()*dScale );
	/*  add hyperlinke as annotation typed ePdfAnnotation_link, associate with
	 *  Action typed ePdfAction_URI
	 */
	PdfAnnotation* pAnnot = pPage->CreateAnnotation( ePdfAnnotation_Link, rectAnnot );
	PdfAction eAction( ePdfAction_URI, pdoc );
	eAction.SetURI( imageURI );
	pAnnot->SetAction( eAction );

	/* finish page and print prompt infomation */
	std::cout<<"Draw image with URI in new pdf page SUCCESSFULLY!"<<std::endl;
}

/*---------------------------------------------------------------------------*/
/*                                 drawGeo()                                 */
/*---------------------------------------------------------------------------*/

void DrawGeo( PdfDocument* pdoc, PdfPage* pPage, PdfPainter* pPainter )
{
	PdfRect rect;

	/* check input param pPage */
	if( NULL == pPage || NULL == pPainter )
	{
		std::cout<<"Usage errer: parameteries can not be NULL"<<std::endl;
	}

	pPainter->SetPage( pPage );
	rect = pPage->GetPageSize();

	/* Draw geometries */
	pPainter->SetStrokingColor( 1.0, 0.0, 0.0 );
	pPainter->SetStrokeWidth( 3 );
	pPainter->DrawLine( 0.0, 0.0, rect.GetWidth(), rect.GetHeight() );
	pPainter->DrawLine( 0.0, rect.GetHeight()/2.0, rect.GetWidth(), rect.GetHeight()/2.0 );
	pPainter->DrawLine( 0.0, rect.GetHeight(), rect.GetWidth(), 0.0 );
	pPainter->FillRect( 2.0, 2.0, rect.GetWidth()/2.0, rect.GetHeight()/2.0, 200.0, 200.0 );
	pPainter->DrawRect( rect.GetWidth()/2.0, rect.GetHeight()/2.0, rect.GetWidth()/2.0, 
			rect.GetHeight()/2.0, 100.0, 100.0 );
	pPainter->DrawEllipse( rect.GetWidth()/2.0, 0, rect.GetWidth()/2.0, rect.GetHeight()/2.0 );
	pPainter->DrawCircle( rect.GetWidth()/2.0, rect.GetHeight()/2.0, 200 );
	
	std::cout<<"Draw some geometory in new pdf page SUCCESSFULLY!"<<std::endl;
}

/*---------------------------------------------------------------------------*/
/*                                 drawText()                                */
/*---------------------------------------------------------------------------*/
#define CONVERSION_CONSTANT 0.002834645669291339

void DrawText( PdfDocument* pDocument, PdfPage* pPage, PdfPainter* pPainter )
{
	pPainter->SetPage( pPage );
    double x = 10000 * CONVERSION_CONSTANT;
    double y = pPage->GetPageSize().GetHeight() - 10000 * CONVERSION_CONSTANT;

    printf("Embedding Font\n");
    printf("!!!!!!!!!!!!!!!\n");
    pPainter->SetFont( pDocument->CreateFont( "Times New Roman" ) );
    pPainter->GetFont()->SetFontSize( 24.0 );
    printf("!!!!!!!!!!!!!!!\n");
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pPainter->SetColor( 0.0, 0.0, 0.0 );
    pPainter->DrawText( x, y, "Hallo Welt!" );
    
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    pPainter->GetFont()->SetUnderlined( true );
    pPainter->SetStrokingColor( 1.0, 0.0, 0.0 );
    pPainter->DrawText( x, y, "Underlined text in the same font!" );

    pPainter->GetFont()->SetUnderlined( false );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    pPainter->DrawText( x, y, "Disabled the underline again..." );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    
    PdfFont* pFont = pDocument->CreateFont( "Arial" );
    pFont->SetFontSize( 12.0 );
    
    pPainter->SetFont( pFont );

    pPainter->DrawText( x, y, "Normal" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pPainter->GetFont()->SetUnderlined( true );
    pPainter->DrawText( x, y, "Normal+underlinded" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pPainter->GetFont()->SetUnderlined( false );
    pFont->SetFontCharSpace( 100.0 );
    pPainter->DrawText( x, y, "Mormal+spaced" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
	
    pPainter->GetFont()->SetUnderlined( true );
    pPainter->DrawText( x, y, "Normal+underlined+spaced" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    pPainter->GetFont()->SetUnderlined( false );
    pFont->SetFontCharSpace( 0.0 );


    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();


    pFont->SetFontScale( 50.0 );
    pPainter->DrawText( x, y, "Condensed" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pFont->SetFontCharSpace( 0.0 );
    pPainter->GetFont()->SetUnderlined( true );
    pPainter->DrawText( x, y, "Condensed+underlinded" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pPainter->GetFont()->SetUnderlined( false );
    pFont->SetFontCharSpace( 100.0 );
    pPainter->DrawText( x, y, "Condensed+spaced" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    
    pPainter->GetFont()->SetUnderlined( true );
    pPainter->DrawText( x, y, "Condensed+underlined+spaced" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    pPainter->GetFont()->SetUnderlined( false );
    pFont->SetFontCharSpace( 0.0 );


    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pFont->SetFontScale( 200.0 );
    pPainter->DrawText( x, y, "Expanded" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pPainter->GetFont()->SetUnderlined( true );
    pPainter->DrawText( x, y, "Expanded+underlinded" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    
    pPainter->GetFont()->SetUnderlined( false );
    pFont->SetFontCharSpace( 100.0 );
    pPainter->DrawText( x, y, "Expanded+spaced" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pPainter->GetFont()->SetUnderlined( true );
    pPainter->DrawText( x, y, "Expanded+underlined+spaced" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    pPainter->GetFont()->SetUnderlined( false );
    pFont->SetFontCharSpace( 0.0 );
    pFont->SetFontScale( 100.0 );


    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();

    pPainter->GetFont()->SetStrikeOut( true );
    pPainter->DrawText( x, y, "Strikeout" );
    y -= pPainter->GetFont()->GetFontMetrics()->GetLineSpacing();
    pPainter->GetFont()->SetUnderlined( false );


    pPainter->DrawText( x, y, "PoDoFo rocks!" );

	std::cout<<"Draw some Text in new pdf page SUCCESSFULLY!"<<std::endl;
}

/*---------------------------------------------------------------------------*/
/*                               UnicodeTest()                               */
/*---------------------------------------------------------------------------*/

/*
void WriteStringToStream( const PdfString & rsString, std;;ostringstream & oss, PdfFont* pFont )
{
	PdfEncoding* pEncoding = new PdfIdentityEncoding( 0, 0xffff, true );
	PdfRefCountedBuffer buffer = pEncoding->ConvertToEncoding( rsString, pFont );
	pdf_long lLen = 0;
	char* pBuffer = NULL;

	std::auto_ptr<PdfFilter> pFilter = PdfFilterFactory::Create( ePdfFilter_ASCIIHexDecode );
	pFilter->Encode( buffer.GetBuffer(), buffer.GetSize(), &pBuffer, &lLen );

	oss << "<";
	oss << std::string( pBuffer, lLen );
	oss << ">";
	free( pBuffer );
	delete pEncoding;
}

void CreateUnicodeAnnotationFreeText( PdfPage* pPage, PdfDocument* pDocument )
{
    PdfString sJap(reinterpret_cast<const pdf_utf8*>("「PoDoFo」は今から日本語も話せます。"));
    PdfFont* pFont = pDocument->CreateFont( "Arial Unicode MS", new PdfIdentityEncoding( 0, 0xffff, true ) ); 

    PdfRect rect( 200.0, 200.0, 200.0, 200.0 );

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
*/


/******************************************************************************
 *                                                                            *
 *                                  main()                                    *
 *                                                                            *
 *****************************************************************************/

int main (int argc, char const* argv[])
{
	int usrcmd;

	PdfMemDocument doc;
	PdfPage* pPage;
	PdfPainter painter;
	PdfRect size = PdfPage::CreateStandardPageSize( ePdfPageSize_A4, false );

	if( argc != 2 )
	{
		printf("Mytest application.\n");
		printf("===================\n");
		printf("Usage:./app [output filename]\n");
		printf("Mytest application.\n");
	}

	while( 1 ) 
	{
		bool terminate = false;

		Prompt();
		std::cin >> usrcmd;
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
				DrawImg( &doc, pPage, &painter );
				break;
			case 2:
				DrawText( &doc, pPage, &painter );
				break;
			case 3:
				DrawGeo( &doc, pPage, &painter );
				break;
		}
		if( terminate ) 
		{
			break;
		}
		else
		{
			painter.FinishPage();
		}

	}

	doc.Write(argv[1]);
	return 0;
}
