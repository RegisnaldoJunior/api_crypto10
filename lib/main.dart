import 'package:aula_mvvm/utils/crypto_theme.dart';
import 'package:aula_mvvm/view/crypto_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'viewModel/crypto_controller.dart';

void main() {
  final CryptoController cryptoController = Get.put(CryptoController());
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      home: CryptoListPage()));
}
