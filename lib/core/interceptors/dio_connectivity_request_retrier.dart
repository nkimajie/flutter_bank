import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:pedantic/pedantic.dart';

class DioConnectivityRequestRetrier {
  final Dio dio = Dio();
  final Connectivity connectivity = Connectivity();

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    final responseCompleter = Completer<Response>();
    StreamSubscription? streamSubscription;
    streamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) async {
      if (connectivityResult != ConnectivityResult.none) {
        unawaited(streamSubscription!.cancel());
        responseCompleter.complete(
          dio.request(
            requestOptions.path,
            cancelToken: requestOptions.cancelToken,
            data: requestOptions.data,
            onReceiveProgress: requestOptions.onReceiveProgress,
            onSendProgress: requestOptions.onSendProgress,
            queryParameters: requestOptions.queryParameters,
            // options: requestOptions.contentType
          ),
        );
      }
    });
    return responseCompleter.future;
  }
}
