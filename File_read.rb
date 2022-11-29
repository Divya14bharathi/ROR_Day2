# Write a Ruby code to read a file and print the lines in the file.

fileobject= File.open("sample.txt","a+")
print (fileobject.read())
fileobject.close()
