# https://www.geeksforgeeks.org/parsing-and-converting-html-documents-to-xml-format-using-python/
# pip install lxml


# Import the required library
from lxml import html, etree

def printHTMLdoc(htmldoc):
    xmldoc = etree.tostring(htmldoc)
    xmldocstr = str(xmldoc, "UTF-8")
    print(xmldocstr)

htmldoc = """
<html>
<body>
<br><br>
<div class="abc" />
</body>
</html>
"""
htmldoc = html.fromstring(htmldoc)
printHTMLdoc(htmldoc)
print()

# https://stackoverflow.com/questions/3593204/how-to-remove-elements-from-xml-using-python
for elem in htmldoc.xpath('//*[attribute::class]'):
    if elem.attrib['class']=='abc':
        parent=elem.getparent()
        parent.remove(elem)
xmldoc = etree.tostring(htmldoc)
xmldocstr = str(xmldoc, "UTF-8")
printHTMLdoc(htmldoc)