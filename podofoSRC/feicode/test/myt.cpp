#include <podofo.h>
#include <cstdio>
#include <iostream>

using namespace PoDoFo;

void prompt()
{
	printf("Function Menu:\n");
	printf("==============\n");
	printf("Please input cooresponding number.\n");
	printf("0] Terminate input, Reach the end of output PDF file.\n");
	printf("1] Add a new page inserted image with URI.\n");
	printf("2] Add a new page with a plain text.\n");
	printf("3] Add a new page, and draw some geometories.\n");

}

/*---------------------------------------------------------------------------*/
/*                                 drawImg()                                 */
/*---------------------------------------------------------------------------*/

void drawImg(PdfDocument* doc, PdfPainter* painter)
{
	string title, imagePath, imageURI;

	/* prompt for user to input */
	cout<<"input the TITLE of the new page:";
	cin>>title;
	cout<<"input the IMAGE PATH"<<endl;
	cin>>imagePath;
	cout<<"input the URI"<<endl;
	cin>>imageURI;

	/* Create new page to use */
	PdfPage* pPage = doc.CreatePage();
	painter->SetPage( pPage );

	/* load image */
	PdfImage image( doc );
	image.LoadFromFile( imagePath.c_str() );

	/* draw image with painter on pPage */

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

void drawGeo()
{
	PdfPage* pPage = doc.CreatePage();
	painter->SetPage( pPage );
	
	
	painter.FinishiPage();
	cout<<"Draw some geometory in new pdf page SUCCESSFULLY!"<<endl;
}

/*---------------------------------------------------------------------------*/
/*                                 drawText()                                */
/*---------------------------------------------------------------------------*/

void drawText()
{
	PdfPage* pPage = doc.CreatePage();
	painter->SetPage( pPage );
	
	
	painter.FinishiPage();
	cout<<"Draw some Text in new pdf page SUCCESSFULLY!"<<endl;
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

	printf("Mytest application.\n");
	printf("===================\n");
	printf("Usage:./app [output filename]\n");
	printf("Mytest application.\n");

	PdfMemDocument doc;
	PdfPainter     painter;

	while( 1 ) 
	{
		prompt();
		cin<<usrcmd;
		switch (usrcmd) {
			case 0:
				terminate = true;
				break;
			case 1:
				drawImg( &doc, &painter);
				break;
			case 2:
				drawText( &doc );
				break;
			case 3:
				drawGeo( &doc );
				break;
		}
		if terminate {
			break;
		}
	}

	doc.Write(argv[1].c_str());
	return 0;
}
