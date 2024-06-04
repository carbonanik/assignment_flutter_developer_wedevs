import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

extension FutureExtensions<R> on Future<R> {
  Future<AsyncValue<R>> errorAsValue() async {
    try {
      return AsyncValue.data(await this);
    } catch (e) {
      return AsyncError(e, StackTrace.current);
    }
  }
}
