import 'dart:io';

class Directory
{
  String filepath= "";

  setDirectoryPath(String? path)
  {
    filepath == path;
  }

  getDirectoryPath()
  {
    return filepath;
  }

  WriteDirectoryPath()
  {
    File file = File("X_directories.txt");
    file.writeAsStringSync(filepath);
  }

  removeDirectoryPath()
  {

  }
}