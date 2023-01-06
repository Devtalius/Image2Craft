@echo off


pushd .
rem Create the "GeneratedDataPack" folder
md generateddatapack

rem Change to the "GeneratedDataPack" folder
cd generateddatapack

rem Create the "data" folder
md data

echo { > "pack.mcmeta"
echo    "pack": { >> "pack.mcmeta"
echo        "pack_format": 8, >> "pack.mcmeta"
echo        "description": "..." >> "pack.mcmeta"
echo    } >> "pack.mcmeta"
echo } >> "pack.mcmeta"

rem Change to the "data" folder
cd data



rem Create the "test" folder
md test

rem Change to the "test" folder
cd test

rem Create the "functions" folder
md functions

popd
move "photosMCfunctions\*.mcfunction" "generateddatapack\data\test\functions"


rem Display a message to confirm that the folder structure was created
echo Folder structure "GeneratedDataPack\data\test\functions" was created in the current working directory