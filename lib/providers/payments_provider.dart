import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:payments_app/models/payment.dart';
import 'package:payments_app/models/result.dart';

class PaymentsProvider extends ChangeNotifier {
  String _baseUrl = '';

  List<Payment> payments = [];

  PaymentsProvider() {
    _getPayments('/payment/list');
  }

  void _getPayments(String url) async {
    var uri = Uri.https(_baseUrl, url);
    final response = await http.get(uri);

    final result = Result<List<Payment>>.fromJson(response.body);

    payments = result.data ?? List.empty();

    notifyListeners();
  }
}
