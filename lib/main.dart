import 'dart:io';

import 'package:dart_task_csv/csv_process.dart';

void main() {
  // Path to the folder where the input file is located
  const path = "I:/Flutter/dart_task_csv/lib/";

  stdout.write('Write the file name? ');
  String? inputFileName = stdin.readLineSync() ?? '';

  CsvProcess.processInputFile(
    inputFileName,
    path,
  );
}
