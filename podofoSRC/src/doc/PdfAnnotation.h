/***************************************************************************
 *   Copyright (C) 2006 by Dominik Seichter                                *
 *   domseichter@web.de                                                    *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU Library General Public License as       *
 *   published by the Free Software Foundation; either version 2 of the    *
 *   License, or (at your option) any later version.                       *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU Library General Public     *
 *   License along with this program; if not, write to the                 *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/

#ifndef _PDF_ANNOTATION_H_
#define _PDF_ANNOTATION_H_

#include "podofo/base/PdfDefines.h"
#include "PdfAction.h"
#include "PdfDestination.h"
#include "PdfElement.h"

namespace PoDoFo {

class PdfFileSpec;
class PdfName;
class PdfPage;
class PdfRect;
class PdfReference;
class PdfString;
class PdfXObject;

/** The type of the annotation.
 *  PDF supports different annotation types, each of 
 *  them has different keys and propeties.
 *  
 *  Not all annotation types listed here are supported yet.
 *
 *  Please make also sure that the annotation type you use is
 *  supported by the PDF version you are using.
 */
enum EPdfAnnotation {
    ePdfAnnotation_Text = 0,                   // - supported
    ePdfAnnotation_Link,                       // - supported
    ePdfAnnotation_FreeText,       // PDF 1.3  // - supported
    ePdfAnnotation_Line,           // PDF 1.3  // - supported
    ePdfAnnotation_Square,         // PDF 1.3
    ePdfAnnotation_Circle,         // PDF 1.3
    ePdfAnnotation_Polygon,        // PDF 1.5
    ePdfAnnotation_PolyLine,       // PDF 1.5
    ePdfAnnotation_Highlight,      // PDF 1.3
    ePdfAnnotation_Underline,      // PDF 1.3
    ePdfAnnotation_Squiggly,       // PDF 1.4
    ePdfAnnotation_StrikeOut,      // PDF 1.3
    ePdfAnnotation_Stamp,          // PDF 1.3
    ePdfAnnotation_Caret,          // PDF 1.5
    ePdfAnnotation_Ink,            // PDF 1.3
    ePdfAnnotation_Popup,          // PDF 1.3  // - supported
    ePdfAnnotation_FileAttachement,// PDF 1.3
    ePdfAnnotation_Sound,          // PDF 1.2
    ePdfAnnotation_Movie,          // PDF 1.2
    ePdfAnnotation_Widget,         // PDF 1.2  // - supported
    ePdfAnnotation_Screen,         // PDF 1.5
    ePdfAnnotation_PrinterMark,    // PDF 1.4
    ePdfAnnotation_TrapNet,        // PDF 1.3
    ePdfAnnotation_Watermark,      // PDF 1.6
    ePdfAnnotation_3D,             // PDF 1.6
    ePdfAnnotation_RichMedia,      // PDF 1.? ALX: Petr P. Petrov

    ePdfAnnotation_Unknown = 0xff
};

/** Flags that control the appearance of a PdfAnnotation.
 *  You can OR them together and pass it to 
 *  PdfAnnotation::SetFlags.
 */
enum EPdfAnnotationFlags {
    ePdfAnnotationFlags_Invisible    = 0x0001,
    ePdfAnnotationFlags_Hidden       = 0x0002,
    ePdfAnnotationFlags_Print        = 0x0004,
    ePdfAnnotationFlags_NoZoom       = 0x0008,
    ePdfAnnotationFlags_NoRotate     = 0x0010,
    ePdfAnnotationFlags_NoView       = 0x0020,
    ePdfAnnotationFlags_ReadOnly     = 0x0040,
    ePdfAnnotationFlags_Locked       = 0x0080,
    ePdfAnnotationFlags_ToggleNoView = 0x0100,

    ePdfAnnotationFlags_Unknow       = 0xffff
};

/******************************************************************************
 *============================================================================*
 *                            class Annotation                                *
 *                                                                            *
 *****************************************************************************/

/** An annotation to a PdfPage 
 *  To create an annotation use PdfPage::CreateAnnotation
 * 
 *  \see PdfPage::CreateAnnotation
 */

/* correspond to a obj in pdf file formated as '23 0 obj ... endob' */

class PODOFO_DOC_API PdfAnnotation : public PdfElement {
 public:
    /** Create a new annotation object
     *
     *  \param pPage the parent page of this annotation
     *  \param eAnnot type of the annotation
     *  \param rRect the rectangle in which the annotation will appear on the page
     *  \param pParent parent of this annotation
     *
     *  \see PdfPage::CreateAnnotation
     */
    PdfAnnotation( PdfPage* pPage, EPdfAnnotation eAnnot, const PdfRect & rRect, PdfVecObjects* pParent );

    /** Create a PdfAnnotation from an existing object
     *
     *  \param pObject the annotations object
     *  \param pPage the page of the annotation
     */
    PdfAnnotation( PdfObject* pObject, PdfPage* pPage );

    ~PdfAnnotation();

    /** Set an appearance stream for this object
     *  to specify its visual appearance
     *  \param pObject an XObject
     */
    void SetAppearanceStream( PdfXObject* pObject );

    /** 
     * \returns true if this annotation has an appearance stream
     */
    bool HasAppearanceStream() const;

    /** Get the rectangle of this annotation
     *  \returns a rectangle
     */
    PdfRect GetRect() const;

/*----- Flags -----------------------------------------------------------------*/

    /** Set the flags of this annotation.
     *  \param uiFlags is an unsigned 32bit integer with different 
     *                 EPdfAnnotationFlags OR'ed together.
     *  \see GetFlags
     */
    void SetFlags( pdf_uint32 uiFlags );

    /** Get the flags of this annotation.
     *  \returns the flags which is an unsigned 32bit integer with different
     *           EPdfAnnotationFlags OR'ed together.
     *
     *  \see SetFlags
     */
    pdf_uint32 GetFlags() const;

/*----- BorderStyle -----------------------------------------------------------------*/

    /** Set the annotations border style.
     *  \param dHCorner horitzontal corner radius 
     *  \param dVCorner vertical corner radius 
     *  \param dWidth width of border
     */
    void SetBorderStyle( double dHCorner, double dVCorner, double dWidth );

    /** Set the annotations border style.
     *  \param dHCorner horitzontal corner radius 
     *  \param dVCorner vertical corner radius 
     *  \param dWidth width of border
     *  \param rStrokeStyle a custom stroke style pattern
     */
    void SetBorderStyle( double dHCorner, double dVCorner, double dWidth, const PdfArray & rStrokeStyle );

/*----- Title -----------------------------------------------------------------*/

    /** Set the title of this annotation.
     *  \param sTitle title of the annoation as string in PDF format
     *
     *  \see GetTitle
     */
    void SetTitle( const PdfString & sTitle ); /* addkey("T", sTitle) */

    /** Get the title of this annotation
     *
     *  \returns the title of this annotation
     *
     *  \see SetTitle
     */
    PdfString GetTitle() const; /* getkey("T") */

/*----- Contents -----------------------------------------------------------------*/

    /** Set the text of this annotation.
     *
     *  \param sContents text of the annoation as string in PDF format
     *
     *  \see GetContents
     */
    void SetContents( const PdfString & sContents ); /* addkey("Contents", sContents) */

    /** Get the text of this annotation
     *
     *  \returns the contents of this annotation
     *
     *  \see SetContents
     */
    PdfString GetContents() const;

/*----- Destination -----------------------------------------------------------------*/

    /** Set the destination for link annotations
     *  \param rDestination target of the link
     *
     *  \see GetDestination
     */
    void SetDestination( const PdfDestination & rDestination );

    /** Get the destination of a link annotations
     *  \param pDoc a PdfDocument owning this annotation.
     *         This is required to resolve names and pages.
     *  \returns a destination object
     * 
     *  \see SetDestination
     */
    PdfDestination GetDestination( PdfDocument* pDoc ) const;

    /** 
     *  \returns true if this annotation has an destination
     */
    bool HasDestination() const;

/*----- Action -----------------------------------------------------------------*/

    /** Set the action that is executed for this annotation
     *  \param rAction an action object
     *
     *  \see GetAction 
     */
    void SetAction( const PdfAction & rAction );

    /** Get the action that is executed for this annotation
     *  \returns an action object. The action object is owned
     *           by the PdfAnnotation.
     *
     *  \see SetAction 
     */
    PdfAction* GetAction() const;

    /** 
     *  \returns true if this annotation has an action
     */
    bool HasAction() const;

/*----- Open -----------------------------------------------------------------*/

    /** Sets wether this annotation is initialy open.
     *  You should always set this true for popup annotations.
     *  \param b if true open it
     */
    void SetOpen( bool b );

    /** 
     * \returns true if this annotation should be opened immediately
     *          by the viewer
     */
    bool GetOpen() const;
    
/*----- fileAttachment -----------------------------------------------------------------*/

    /**
     * \returns true if this annotation has a file attachement
     */
    bool HasFileAttachement() const;

    /** Set a file attachment for this annotation.
     *  The type of this annotation has to be
     *  ePdfAnnotation_FileAttachement for file 
     *  attachements to work.
     *
     *  \param rFileSpec a file specification
     */
    void SetFileAttachement( const PdfFileSpec & rFileSpec );

    /** Get a file attachement of this annotation.
     *  \returns a file specification object. The file specification object is owned
     *           by the PdfAnnotation.
     *
     *  \see SetFileAttachement 
     */
    PdfFileSpec* GetFileAttachement() const;

 
/*----- QuadPoints -----------------------------------------------------------------*/

    /** Get the quad points associated with the annotation (if appropriate).
     *  This array is used in text markup annotations to describe the
     *  regions affected by the markup (i.e. the hilighted words, one
     *  quadrilateral per word)
     *
     *  \returns a PdfArray of 8xn numbers describing the
     *           x,y coordinates of BL BR TR TL corners of the
     *           quadrilaterals. If inappropriate, returns
     *           an empty array.
     */
    PdfArray GetQuadPoints() const;

    /** Set the quad points associated with the annotation (if appropriate).
     *  This array is used in text markup annotations to describe the
     *  regions affected by the markup (i.e. the hilighted words, one
     *  quadrilateral per word)
     *
     *  \param rQuadPoints a PdfArray of 8xn numbers describing the
     *           x,y coordinates of BL BR TR TL corners of the
     *           quadrilaterals. 
     */
    void SetQuadPoints( const PdfArray & rQuadPoints );

    /** Get the color key of the Annotation dictionary
     *  which defines the color of the annotation, 
     *  as per 8.4 of the pdf spec. The PdfArray contains
     *  0 to four numbers, depending on the colorspace in
     *  which the color is specified
     *  0 numbers means the annotation is transparent
     *  1 number specifies the intensity of the color in grayscale
     *  3 numbers specifie the color in the RGB colorspace and
     *  4 numbers specify the color in the CMYK colorspace
     *
     *  \returns a PdfArray of either 0, 1, 3 or 4 numbers
     *           depending on the colorspace in which the color
     *           is specified
     */

/*----- Color -----------------------------------------------------------------*/

    PdfArray GetColor() const;

    /** Set the C key of the Annotation dictionary, which defines the
     *  color of the annotation, as per 8.4 of the pdf spec. Parameters
     *  give the color in rgb colorspace coordinates
     *
     *  \param r number from 0 to 1, the intensity of the red channel 
     *  \param g number from 0 to 1, the intensity of the green channel 
     *  \param b number from 0 to 1, the intensity of the blue channel 
     */

    void SetColor( double r, double g, double b );

    /** Set the C key of the Annotation dictionary, which defines the
     *  color of the annotation, as per 8.4 of the pdf spec. Parameters
     *  give the color in cmyk colorspace coordinates
     *
     *  \param c number from 0 to 1, the intensity of the cyan channel 
     *  \param m number from 0 to 1, the intensity of the magneta channel 
     *  \param y number from 0 to 1, the intensity of the yellow channel 
     *  \param k number from 0 to 1, the intensity of the black channel 
     */

    void SetColor( double c, double m, double y, double k );

    /** Set the C key of the Annotation dictionary, which defines the
     *  color of the annotation, as per 8.4 of the pdf spec. Parameters
     *  give the color in grayscale colorspace coordinates
     *
     *  \param gray  number from 0 to 1, the intensity of the black
     */

    void SetColor( double gray );

    /** Set the C key of the Annotation dictionary to an empty array, which,
     *  as per 8.4 of the pdf spec., makes the annotation transparent
     *
     */

    void SetColor();

/*----- Annot Type-----------------------------------------------------------------*/

    /** Get the type of this annotation
     *  \returns the annotation type
     */
    inline EPdfAnnotation GetType() const;

/*----- belong to which page -----------------------------------------------------------------*/

    /** Get the page of this PdfField
     *
     *  \returns the page of this PdfField
     */
    inline PdfPage* GetPage() const;

/*---------------------------------------------------------------------------*/
/*                                 properties                                */
/*---------------------------------------------------------------------------*/

 private:

    /** Convert an annotation enum to its string representation
     *  which can be written to the PDF file.
     *  \returns the string representation or NULL for unsupported annotation types
     */

    static const long  s_lNumActions;
    static const char* s_names[]; /* C-style string : psz */

 private:

	/* Annotation type */
    EPdfAnnotation m_eAnnotation;

	/* action when Annot activate  coorespond to /A in PDF reference */
    PdfAction*     m_pAction;

	/* file specification */
    PdfFileSpec*   m_pFileSpec;

    PdfPage*       m_pPage;
};

// -----------------------------------------------------
// 
// -----------------------------------------------------
inline EPdfAnnotation PdfAnnotation::GetType() const
{
    return m_eAnnotation;
}

// -----------------------------------------------------
// 
// -----------------------------------------------------
inline PdfPage* PdfAnnotation::GetPage() const
{
    return m_pPage;
}

};

#endif /* _PDF_ANNOTATION_H_ */
