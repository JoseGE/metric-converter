import 'dart:io';
import 'package:metric_converter/metric_converter.dart' as metric_converter;
import 'package:metric_converter/file_manager.dart' as app;
main(List<String> arguments) {
 print("Please set url data to convert: ");
  var url = stdin.readLineSync();
  int convert = app.FileManager.convert(url);
  if(convert == 1){
    print("Your file has been converted");
  }
}
