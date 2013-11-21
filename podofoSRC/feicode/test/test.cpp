#include <stdio.h>
#include <stdlib.h>

#ifdef _HAVE_CONFIG
#include <config.h>
#endif // _HAVE_CONFIG

#include "ImageConverter.h"
#include <podofo.h>

/*---------------------------------------------------------------------------*/
/*                                printf_help()                              */
/*---------------------------------------------------------------------------*/

void print_help()
{
  printf("Usage: ./test [output.pdf] [image] [URI]\n");
  printf("============================================================\n");
  printf("This tool will write the specified images into a single PDF.\n");
  printf("And embeded a hyperlink underneath this image.          \n");
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

/*---------------------------------------------------------------------------*/
/*                                 main()                                    */
/*---------------------------------------------------------------------------*/

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
  converter.AddImage( argv[2] );
  converter.AddURI( argv[3] );
  
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
