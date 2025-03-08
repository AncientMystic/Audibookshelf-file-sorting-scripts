# Audibookshelf-file-sorting-scripts
a few very basic scripts to help sort mp3's

WARNING: these are basic scripts, while i did test them and use them they come with no warranty of any kind and are of course use at your own risk. i am not ressponsible for any errors or undesired results. 

Script 1: mp3-into-folder.ps1 
this script when placed inside a folder, moves every mp3 fle into a subfolder with the same name. made to be used in a single folder full of mp3 files. 

script 2: mp3-into-folder-for-subfolders.ps1
this is a recursive script that asks which folder you would like it to sort, once you give it a directory it then scans folders in that directory and places subsiquent mp3 files into their own folders and then pauses upon completion. 

example:
root folder > author folder > book.mp3
would result in
root folder > author folder > book folder > book.mp3

it also makes no attempt to sort part 1-2, etc, seperated files into the same folders, or multiple files from a series, etc, it is a very basic time saving script, all it does is copy the name of the file and make a folder for it. so this kind of assumes you will be sorting directories with single book files into their own folders. 

clones, changes, etc, are welcome, i am only sharing in case someone else want to use these too. 
