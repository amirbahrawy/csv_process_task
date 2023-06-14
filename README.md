# CsvProcess

This class provides a simple way to process CSV files. It can be used to calculate the average quantity of each product and the most popular brand for each product.
##Getting Started
To get started with this project, follow the instructions below.
### Prerequisites
Dart SDK: Make sure you have Dart installed on your machine. You can download it from the official Dart website: https://dart.dev
### Usage
1- Place the input CSV file in the desired folder.

2- Open a terminal or command prompt and navigate to the directory where your Dart script is located.
Running the Script

To run the script and process the input CSV file, use the following command:
```shell
dart main.dart
```
The processInputFile method will read the input file, parse the data into a list of objects, and then write the output to two files. The first file will contain the average quantity of each product, and the second file will contain the most popular brand for each product.

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
