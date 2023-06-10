import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';

class CsvProcess {
  static void processInputFile(String inputFileName, String path) async {
    try {
      final input = File("$path$inputFileName").openRead();
      final fields = await input
          .transform(utf8.decoder)
          .transform(CsvToListConverter())
          .toList();
      final orders = fields.length;
      final output0 = File('0_$inputFileName').openWrite();
      final output1 = File('1_$inputFileName').openWrite();
      // Write the headers(its not necessary but it makes the output more readable)
      output0.write('Product Name,Average Quantity\n');
      output1.write('Product Name,Most Popular Brand\n');
      // Get the product names
      final products = fields.map((product) => product[2]).toSet();
      final productQuantity = <String, int>{};
      final brandQuantity = <String, Map<String, int>>{};
      for (int i = 0; i < orders; i++) {
        // Get the product name
        final product = fields[i][2];
        // Get the quantity
        final quantity = fields[i][3] as int;
        // Get the brand
        final brand = fields[i][4];
        // Get the most quantity of each product
        productQuantity[product] = (productQuantity[product] ?? 0) + quantity;
        // Get the most popular brand of each product
        if (brandQuantity[product]?[brand] == null) {
          if (brandQuantity[product] == null) {
            brandQuantity[product] = {};
          }
          brandQuantity[product]!.addAll({brand: 1});
        } else {
          brandQuantity[product]![brand] =
              (brandQuantity[product]![brand] ?? 0) + 1;
        }
      }
      // Write the output
      for (final product in products) {
        // Get the average quantity
        final averageQuantity = productQuantity[product]! / orders;
        // Get the most popular brand
        final mostPopularBrand = brandQuantity[product]!
            .entries
            .reduce((a, b) => a.value > b.value ? a : b)
            .key;

        // Write the output
        output0.write('$product,$averageQuantity\n');
        output1.write('$product,$mostPopularBrand\n');
      }
      // Close the files
      output0.close();
      output1.close();
    } on FileSystemException catch (_) {
      print('Please check the file name and try again!');
    } catch (e) {
      print(e);
    }
  }
}
