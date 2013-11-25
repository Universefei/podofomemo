#include <string>
#include <vector>

class ImageConverter {
public:
    ImageConverter();
    ~ImageConverter();

    inline void SetOutputFilename( const char* pszFilename ) {
        m_sOutputFilename = pszFilename;
    }

    inline void AddImage( const char* pszImage ) {
        //m_vecImages.push_back( std::string(pszImage) );
		m_sImage = pszImage;
    }

    inline void AddURI( const char* pszURI ) {
        //m_vecImages.push_back( std::string(pszImage) );
		m_sURI = pszURI;
    }

	/* to generate PDF file */
    void Work();

private:
	/* vector to store the image names to be added to PDF file */
    //std::vector<std::string> m_vecImages;
    std::string              m_sImage;

    std::string              m_sURI;

	/* output PDF file name */
    std::string              m_sOutputFilename;

	/* this is an option select by user */
    //bool                     m_bUseImageSize;
};
