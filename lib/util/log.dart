import 'dart:io';


class Log
{
  WriteLogError(String log)
  {
    File file = File("log.txt");
    file.writeAsStringSync(log);
  }
}