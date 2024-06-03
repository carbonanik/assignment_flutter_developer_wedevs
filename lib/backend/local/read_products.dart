import 'dart:convert';

import 'package:assignment_flutter_developer_wedevs/model/product_list_response.dart';
import 'package:flutter/services.dart';

Future<ProductListResponse> readProducts(String id) async {
  final String response = await rootBundle.loadString('assets/products.json');
  final data = await json.decode(response);
  return ProductListResponse.fromJson(data);
}
