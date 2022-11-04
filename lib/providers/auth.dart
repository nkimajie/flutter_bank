import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_cart/core/network/http_request.dart';
import 'package:shopping_cart/core/network/network_info.dart';

class Auth with ChangeNotifier {
  String? _token;
  String? get token => _token;
  bool get isAuth => token != null;
  final NetworkInfo _networkInfo = NetworkInfo();
  final HttpServiceRequester _httpServiceRequester = HttpServiceRequester();

  Future RegisterUser(
      {required String phoneNumber, required String password}) async {
    Map<String, dynamic> body = {
      'phoneNumber': phoneNumber,
      'password': password
    };

    try {
      if (await _networkInfo.isConnected) {
        final response =
            await _httpServiceRequester.post(url: '/auth/signup', body: body);

        return true;
      } else {
        return 'Please check internet connection and try again';
      }
    } catch (error) {
      if (error is DioError) {
        if (error.response!.statusCode! < 500) {
          return error.response?.data['message'];
        } else {
          return 'Server Error';
        }
      } else {
        return 'Error occured';
      }
    }
  }

  Future LoginUser(
      {required String phoneNumber, required String password}) async {
    Map<String, dynamic> body = {
      'phoneNumber': phoneNumber,
      'password': password
    };

    try {
      if (await _networkInfo.isConnected) {
        final response =
            await _httpServiceRequester.post(url: '/auth/login', body: body);

        final responseData = response.data['data'];
        _token = responseData['token'];
        final prefs = await SharedPreferences.getInstance();
        final userData = json.encode({'token': _token});
        prefs.setString('userData', userData);
        notifyListeners();
        return true;
      } else {
        return 'Please check internet connection and try again';
      }
    } catch (error) {
      if (error is DioError) {
        if (error.response!.statusCode! < 500) {
          return error.response?.data['message'];
        } else {
          return 'Server Error';
        }
      } else {
        return 'Error occured';
      }
    }
  }

  Future<void> logout() async {
    _token = null;
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('userData');
    notifyListeners();
  }

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    } else {
      final extractedUserData =
          json.decode(prefs.getString('userData')!) as Map<String, Object>;
      _token = extractedUserData['token'] as String?;
      Map<String, dynamic> userMap =
          jsonDecode(extractedUserData['user'] as String);
      notifyListeners();
      return true;
    }
  }
}
