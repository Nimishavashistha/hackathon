import 'package:flutter/material.dart';
import 'package:hackathon/app/constants/constants.dart';
import 'package:hackathon/app/module/invoice/views/pages/invoice.dart';

class InvoiceMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iPrimarryColor,
      body: Invoice(),
    );
  }
}
