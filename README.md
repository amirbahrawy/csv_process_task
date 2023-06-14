# CsvProcess

This class provides a simple way to process CSV files. It can be used to calculate the average quantity of each product and the most popular brand for each product.

## Usage
To use the CsvProcess class, first, create a new instance of the class. Then, call the processInputFile method, passing in the name of the input file and the path to the output directory.

The processInputFile method will read the input file, parse the data into a list of objects, and then write the output to two files. The first file will contain the average quantity of each product, and the second file will contain the most popular brand for each product.

Example
The following code shows how to use the CsvProcess class to process a CSV file:
```dart
import 'package:csv_process/csv_process.dart';

void main() {
// Create a new instance of the CsvProcess class.
final csvProcess = CsvProcess();

// Call the processInputFile method, passing in the name of the input file and the path to the output directory.
csvProcess.processInputFile('input_example.csv', 'users/output');
}
```
Output
The processInputFile method will write two files to the output directory. The first file will contain the average quantity of each product, and the second file will contain the most popular brand for each product.
Assume the input file contain this data
```
ID1, Willard vista, Intelligent Copper Knife,3, Hill-Gorczany
ID2, Roger centers, Intelligent Copper Knife,1, Kunze-bernhard
ID3,Roger centers,Small Granite Shoes,4, Rowe and Legros
ID4,Roger centers,Intelligent Copper Knife,4,Hill-Gorczany
ID5,Willa hollow,Intelligent Copper Knife,4,Hill-Gorczany
```
The following is an example of the output of the first file called 0_input_example.csv:
```
Product Name, Average Quantity
Product Name, Average Quantity
Intelligent Copper Knife,2.4
Small Granite Shoes,0.8
```
And the following is an example of the output of the second file called 1_input_example.csv:
```
Product Name, Most Popular Brand
Intelligent Copper Knife, Hill-Gorczany
Small Granite Shoes, Rowe and Legros
```
