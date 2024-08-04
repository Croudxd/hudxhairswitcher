import 'package:file_picker/file_picker.dart';
import 'package:hudxhairswitcher/hud/models/H_directory.dart';


class Import{

  Future<void> pickFile() async
  {
    try
    {
      final result = await FilePicker.platform.pickFiles();

      if(result!=null && result.files.isNotEmpty)
      {
        var pathSave = new Directory();
        final path = result.files.single.path;
        pathSave.setDirectoryPath(path);
        pathSave.WriteDirectoryPath();
      }
      else
      {
        print("No file selected");
      }
    } 
    
    catch(e)
    {
      print(e);
    }
  }

  moveFolder()
  {
    
  }

}

