from xml.dom import minidom
from pathlib import Path


def read_xml(node_name):
    # parse an xml file by name
    my_doc = minidom.parse( str(Path(__file__).parent.parent)+'/dataTable.xml')
    data = my_doc.getElementsByTagName(node_name)[0]
    return data.firstChild.data