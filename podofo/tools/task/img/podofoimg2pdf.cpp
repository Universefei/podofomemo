#include <stdio.h>
#include <stdlib.h>

#ifdef _HAVE_CONFIG
#include <config.h>
#endif // _HAVE_CONFIG

#include "ImageConverter.h"
#include <podofo.h>

void print_help()
{
  printf("Usage: podofoimg2pdf [output.pdf] [-useimgsize] [image1 image2 image3 ...]\n\n");
  printf("Options:\n");
  printf(" -useimgsize    Use the imagesize as page size, instead of A4\n");
  printf("\nPoDoFo Version: %s\n\n", PODOFO_VERSION_STRING);
  printf("\n");
  printf("This tool will combine any number of images into a single PDF.\n");
  printf("This is useful to create a document from scanned images.\n");
  printf("Large pages will be scaled to fit the page and imags smaller\n");
  printf("than the defined page size, will be centered.\n");
  printf("\n");
  printf("Supported image formats:\n");

  const char** ppszFormats = PoDoFo::PdfImage::GetSupportedFormats();
  while( *ppszFormats ) 
  {
      printf("\t%s\n", *ppszFormats );
      ++ppszFormats;
  }
  printf("\n");
}

int main( int argc, char* argv[] )
{
  char*    pszOutput; /* pointer to string, zero-terminated */

  /* argc include executable application name, as argv[0] */
  if( argc < 3 )
  {
    print_help();
    exit( -1 ); /* as set -e in shell */
  }

  pszOutput = argv[1];
  printf("Output filename: %s\n", pszOutput);
  
  ImageConverter converter;
  converter.SetOutputFilename( pszOutput );
  
  /* check every command line param */
  /* is there any limit on arguments amount? */
  for( int i=2;i<argc;i++ ) 
  {
      std::string sOption = argv[i];

	  /* ? why not strcmp ? */
	  /* c++ string != c psz */
	  /* psz == char *  */

      if( sOption == "-useimgsize" ) /* option */
      {
          converter.SetUseImageSize( true );
      }
      else 
      {
          printf("Adding image: %s\n", argv[i]);
          converter.AddImage( argv[i] ); /* how this function implement? */
      }
  }
  
  try {
      converter.Work(); /* start */
  } catch( PoDoFo::PdfError & e ) {
      fprintf( stderr, "Error: An error %i ocurred during processing the pdf file.\n", e.GetError() );
      e.PrintErrorMsg();
      return e.GetError();
  }

  printf("Wrote PDF successfully: %s.\n", pszOutput );
  
  return 0;
}
