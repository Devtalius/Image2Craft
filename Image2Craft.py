from gen import GenerateMcFunction
from pathlib import Path
import os
import re
def CheckPhotos(name):
    cwd = Path(__file__).parent
    if (cwd / name).is_dir():
        return cwd / name
    else:
        return False
def extract_items(file_path):
  # Open the file and read the contents
  with open(file_path) as f:
    contents = f.read()
  
  # Use a regular expression to match the items between the brackets
  pattern = r"\[(.+)\]"
  match = re.search(pattern, contents)
  
  # Extract the items and split them by comma
  items = match.group(1)
  return [item.strip() for item in items.split(",")]


pathto = Path(__file__).with_name("photosMCfunctions")
pathblockset = Path(__file__).with_name("customblockset.txt")
use = input("Do you want to use your blockset? Y/N. If Y, follow the instructions in customblockset.txt")
if use == "Y":
    
    blockslist = extract_items(pathblockset)
else:
    blockslist = []
if CheckPhotos("photosMCfunctions") != False:
    
    GenerateMcFunction(pathto, blockslist)
    print("MCFunctions generated in "+str(pathto))
    
    os.system('cmd /k "pause"')
else:

    print('Folder photosMCfunctions not found in the current dir. Run setup.bat first and put your images in the folder that will appear')

