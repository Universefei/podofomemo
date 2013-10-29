Source code analysis
====================

## Overview

### Resources:

* [PoDoFo documentation by doxygen](http://podofo.sourceforge.net/doc/html/index.html)
* [PoDoFo main page](http://podofo.sourceforge.net/)
* [Adobe PDF reference 1.7](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&ved=0CC8QFjAB&url=http%3a%2f%2fwww%2eadobe%2ecom%2fdevnet%2facrobat%2fpdfs%2fpdf_reference_1-7%2epdf&ei=a3BvUvvXCcPPkwXA2YHoCw&usg=AFQjCNEEdHsq4jtVJroKeIYgRe8SVbhmfQ)
* [pdfMaker's CSDN blog](http://blog.csdn.net/pdfmaker/article/category/137486)

### Src architecture

* /podofo/src/base (fundation lib)
* /podofo/src/doc (high level lib)

![podofo architecture](https://raw.github.com/Universefei/podofomemo/master/src/feifigure/podofo_architecture.png)


## tips

```
 Using PoDoFo in Your Application

 A simple example that uses PoDoFo can be found in examples/helloworld . 
 You will also find the tests and tools shipped with PoDoFo informative when 
 learning to use the library. Reading the documentation on PdfMemDocument, 
 PdfStreamedDocument, PdfObject and PdfVariant may also be useful.

```
 
 Read following documents first maybe useful:
 
 * PdfMemDocument
 * PdfStreamdDocument
 * PdfObject
 * PdfVariant


## Syntax

### White-space

**NOTE**:

- White-space characters separate syntactic constructs.
- All white-space characters are equivalent, except in comments/strings/streams.
- PDF treats any sequence of consecutive white-space characters as one.

![White-space table](https://raw.github.com/Universefei/podofomemo/master/src/feifigure/whitespace.png)

### Comments

1. Comments will be parsed as White-space characters.
 
2. Anything between %(the percent sing) and the end of the line are treated as
   comments, except below two:

- `%PDF-n.m` : descript pdf parser version, implicitly imply the start of file
- `%%EOF`    : descript fire structure, End Of File

### Objects

PDF support **8** basic types of objects:

- Boolean values
- Interger and real numbers
- Strings
- Names
- Arrays
- Dictionaries
- Streams
- The null object



