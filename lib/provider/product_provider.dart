import 'package:assignment_flutter_developer_wedevs/backend/local/read_products.dart';
import 'package:assignment_flutter_developer_wedevs/model/product_list_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Product>> productList(ProductListRef ref) async {
  return await readProducts();
}
