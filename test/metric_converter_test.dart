import 'dart:io';

import 'package:metric_converter/metric_converter.dart';
import 'package:metric_converter/file_manager.dart';
import 'package:test/test.dart';

/**
 * with not found file -> FileSystemException
 * getEmptyFile_throwException -> FileSystemException.
 */
void main() {
  test('getFileNotFound_throwException', () {
    expect(() => FileManager.getFile('file'), throwsA(TypeMatcher<FileSystemException>()));
  });
  test('getEmptyFile_throwException', () {
    expect(()=>FileManager.getFile('../metric-converter/data/filetoconvert.txt'),  throwsA( TypeMatcher<Exception>()));
  });
  test('getNotEmptyFileButInvalidLine_throwException', () {
    File file =  File('../metric-converter/data/filetoconvert_invalid_data.txt');
    expect(()=>FileManager.validateData(file),  throwsA( TypeMatcher<Exception>()));
  });
  test('getNotEmptyFileValidLine_returnListData', () {
    File file =  File('../metric-converter/data/filetoconvert_valid_data.txt');
    Map actual = {0: ['5', 'cm', 'km'], 1: ['8', 'km', 'm']};
    expect(FileManager.validateData(file),  equals(actual));
  });

  /**
   * TEST CONVERT CLASS
   */
  test('cmToCm_return1', () {
    var value = [1.0,'cm','cm'];
    expect(MetricConverter(value).convert(),  equals(1));
  });
  test('cmTokm_return', () {
    var value = [5.0,'cm','km'];
    expect(MetricConverter(value).convert(),  equals(0.00005));
  });
  test('cmToin_return', () {
    var value = [5.0,'cm','in'];
    expect(MetricConverter(value).convert(),  equals(1.968503937));
  });
  test('cmTom_return', () {
    var value = [5.0,'cm','m'];
    expect(MetricConverter(value).convert(),  equals(0.05));
  });

  /**
   * COnverter Test
   */
   test('converTest', () {
    expect(FileManager.convert('../metric-converter/data/filetoconvert_valid_data.txt'),  equals(1));
  });
}
