import 'dart:io';

class Active
{
  String path = "";

  setPath(String p)
  {
    path == p;
  }

  getPath()
  {
    return path;
  }

  writePath()
  {
    File file = File("H_active.txt");
    file.writeAsStringSync(path);
  }

  readPath()
  {
    
  }

  removePath()
  {
    
  }
}