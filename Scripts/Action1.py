from xml.dom import minidom
from pathlib import Path

#Test
def read_xml(node_name):
    # parse an xml file by name
    my_doc = minidom.parse('/Users/mithunroy/PycharmProjects/RobotPy/dataTable.xml')
    data = my_doc.getElementsByTagName(node_name)[0]
    return data.firstChild.data


def Add_two_numbers(n):
    return n+5
