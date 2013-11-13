PoDoFo SRC Analysis
===================

## Overview

### Resources:

* [PoDoFo documentation by doxygen](http://podofo.sourceforge.net/doc/html/index.html)
* [PoDoFo main page](http://podofo.sourceforge.net/)
* [Adobe PDF reference 1.7](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&ved=0CC8QFjAB&url=http%3a%2f%2fwww%2eadobe%2ecom%2fdevnet%2facrobat%2fpdfs%2fpdf_reference_1-7%2epdf&ei=a3BvUvvXCcPPkwXA2YHoCw&usg=AFQjCNEEdHsq4jtVJroKeIYgRe8SVbhmfQ)
* [pdfMaker's CSDN blog](http://blog.csdn.net/pdfmaker/article/category/137486)
* [Navigating the Internal Structure of a PDF Document](http://www.planetpdf.com/developer/article.asp?ContentID=navigating_the_internal_struct&page=0)
* [pdf Tools](http://blog.didierstevens.com/programs/pdf-tools/)
* [pdf hacks](http://pdfhacks.wordpress.com/category/linux/)

### Structure of the library

![podofo architecture](https://raw.github.com/Universefei/podofomemo/master/feifigure/podofo_architecture.png)

* /podofo/src/base (fundation lib)
* /podofo/src/doc (high level lib)

### Build Notice

**need to install prerequisite**

1. From ./podofo/README.html:
```
sudo aptitude install build-essential g++ cmake libz-dev libtiff-dev \
		 libjpeg-dev libfreetype6-dev libfontconfig-dev
```

2. Before that you need :
`sudo apt-get install appitude`
`sudo apt-get install libcppunit-dev`

3. Then other packages:
from compile infoes,note that libcrypto have some problems:
`sudo apt-cache search libcrypto`
you will get multiple matched packages
try to install them one by one!

4. check the compile info to find out what can not found
install neccesory packages

5. install libpng
`sudo apt-cache search libpng` find matched packages and install ...

### Interface TIPS

```
./tools/
├── CMakeLists.txt
├── podofobox/
├── podofocolor/
├── podofocountpages/          (count PDF file pages)
├── podofocrop/
├── podofoencrypt/
├── podofogc/
├── podofoimg2pdf/             (input image generate correspongding PDF file)
├── podofoimgextract/          (extract all images from a PDF file)
├── podofoimpose/
├── podofoincrementalupdates/
├── podofomerge/
├── podofopages/               (delete Page, and move Page position)
├── podofopdfinfo/
├── podofotxt2pdf/
├── podofotxtextract/
├── podofouncompress/
├── podofoxmp/
└── tools

17 directories, 2 files
```


### Source code TIPS

```
 Using PoDoFo in Your Application

 A simple example that uses PoDoFo can be found in examples/helloworld . 
 You will also find the tests and tools shipped with PoDoFo informative when 
 learning to use the library. Reading the documentation on PdfMemDocument, 
 PdfStreamedDocument, PdfObject and PdfVariant may also be useful.

```
 
 Read following documents first maybe useful:
 
 * [PdfMemDocument](http://podofo.sourceforge.net/doc/html/classPoDoFo_1_1PdfMemDocument.html)
 * [PdfStreamedDocument](http://podofo.sourceforge.net/doc/html/classPoDoFo_1_1PdfStreamedDocument.html)
 * [PdfObject](http://podofo.sourceforge.net/doc/html/classPoDoFo_1_1PdfObject.html)
 * [PdfVariant](http://podofo.sourceforge.net/doc/html/classPoDoFo_1_1PdfVariant.html)

#### Done list

 1. 11.13:

```
 class PdfDocument;
 class PdfVariant;
 class PdfObject;
 Class PdfStream;
 class PdfVecObjects;

 class PdfDataType
 class PdfData
 class PdfName
 class PdfString
```



## Syntax

### White-space

**NOTE**:

- White-space characters separate syntactic constructs.
- All white-space characters are equivalent, except in comments/strings/streams.
- PDF treats any sequence of consecutive white-space characters as one.

![White-space table](https://raw.github.com/Universefei/podofomemo/master/feifigure/whitespace.png)

### Comments

1. Comments will be parsed as White-space characters.
 
2. Anything between %(the percent sing) and the end of the line are treated as
   comments, except below two:

- `%PDF-n.m` : descript pdf parser version, implicitly imply the start of file
- `%%EOF`    : descript fire structure, End Of File
- `%number` after `%PDF-n.m` line, if number > 128 indicate this pdf contain binary contents

### Objects

PDF support **8** basic types of objects:(COS)

- Boolean values : int the file as the text `true` or `false`
- Interger and real numbers
	- Interger : in the files as a number without a decimal point
	- Real Number : in the file as a number with a decimal point
- Strings
	- Literal strings : in parentheses like  `(feilunzhou )`
	- Hexadecimal strings : in angle brackets `<8A9F3D9C99AD>`
- Names : form as `/text`, slash followed by some text, no white-space or punctuation allowed
- Arrays : form as `[...other objects...]`
- Dictionaries : form as `<<...other objects...>>`
- Streams : form as `20 0 obj<<...stream attribute objs...>>stream ...binarydata...endstream`
- The null object

The first 5 are single value types, and the next 3 are container types!

