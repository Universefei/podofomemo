#include <string>
#include <vector>

class ImageConverter {
public:
    ImageConverter();
    ~ImageConverter();

/*----- implemented -------------------------------------------------------*/
    inline void SetOutputFilename( const char* pszFilename ) {
        m_sOutputFilename = pszFilename;
    }

/*----- implemented -------------------------------------------------------*/
    inline void AddImage( const char* pszImage ) {
        m_vecImages.push_back( std::string(pszImage) );
    }

/*----- implemented -------------------------------------------------------*/
    inline void SetUseImageSize( bool bImageSize ) {
        m_bUseImageSize = bImageSize;
    }

	/* to generate PDF file */
    void Work();

private:
	/* vector to store the image names to be added to PDF file */
    std::vector<std::string> m_vecImages;

	/* output PDF file name */
    std::string              m_sOutputFilename;

	/* this is an option select by user */
    bool                     m_bUseImageSize;
};
