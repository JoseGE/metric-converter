
import 'dart:io';
import 'package:metric_converter/metric_converter.dart';


class FileManager {
  static convert(url) {
    var data = getFile(url);
    Map filteredData = validateData(data);
    
    String finalData = "";
    for (var i = 0; i < filteredData.length; i++) {
      List item = filteredData[i];
      finalData += "\n Value:${item[0]} | From:${item[1]} | To: ${item[2]} | Result:${MetricConverter(item).convert()}";
    }
    new File('../metric-converter/convertedData.txt').writeAsStringSync(finalData);
    return 1;
  }
  static getFile(String url) {
    bool isFile = FileSystemEntity.isFileSync(url);
    if (!isFile) {
      throw FileSystemException("Cannot find File", url);
    }
    File file =  File(url);
    String fileData = file.readAsStringSync();
    if (fileData == '') {
      throw Exception("File has not data");
    }
    return file;
  }

  static validateData(File data) {
    var lines = data.readAsLinesSync();
    Map dataList = Map();
    for (var i = 0; i < lines.length; i++) {
      String item = lines[i];
      if(!(item.contains('|') || item.contains(','))) {
        throw Exception('Error at line ${i+1}: has not valid separator must be | or ,');
      }
        if(item.contains('|')) {
          dataList[i] = item.split('|');
        }else if(item.contains(',')){
          dataList[i] = item.split(',');
        }
    }
   return dataList;
  }
}
