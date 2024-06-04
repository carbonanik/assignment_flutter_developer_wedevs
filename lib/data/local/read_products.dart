import 'dart:convert';

import 'package:assignment_flutter_developer_wedevs/model/product_list_response.dart';
import 'package:flutter/services.dart';

Future<List<Product>> readProducts() async {
  final String response =
      await rootBundle.loadString('assets/mock_data/products.json');
  final data = (await json.decode(response)) as List<dynamic>;
  return data.map((e) => Product.fromJson(e)).toList();
}
