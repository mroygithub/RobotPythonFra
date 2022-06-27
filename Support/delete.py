from selenium import webdriver
from xml.dom import minidom
from pathlib import Path




class DeleteTest:

    def read_xml(self):

        return Path(__file__).parent.parent


obj = DeleteTest()
print(obj.read_xml())