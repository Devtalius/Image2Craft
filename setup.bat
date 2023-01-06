@echo off



md "photosMCfunctions"



echo Folder "photosMCfunctions" was created in the current working directory 

echo between these brackets,  > "customblockset.txt"

echo put the blocks that you want the generator to use (separated by comma)  >> "customblockset.txt"

echo the blocks that can be used, are specified in readme in repo link  > "customblockset.txt"
echo under the "Usable blocks" section  >> "customblockset.txt"

echo https://github.com/CoastalZ/Image2Craft  >> "customblockset.txt"

echo any mistypes will break the function so be careful  >> "customblockset.txt"

echo [red_wool,blue_wool,green_wool]  these wools are just for demonstration  >> "customblockset.txt"



echo Text file "customblockset.txt" was created in the current working directory

echo Installing required libraries...

pip install Pillow

echo Done!

pause