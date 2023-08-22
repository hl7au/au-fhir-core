@echo off 
"C:\Program Files\Java\jdk-17\bin\java.exe" -Xmx4096m -jar "publisher.jar" -ig ig.ini -publish http://hl7.org.au/fhir/core/0.2.1-preview
pause