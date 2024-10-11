import 'package:aula_mvvm/model/crypto_model.dart';
import 'package:aula_mvvm/viewmodel/number_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoDetailPage extends StatelessWidget {
  const CryptoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {

    CryptoModel cryptoModel = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('No detalhe: ${cryptoModel.cryptoName} '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
                Image(image: NetworkImage(cryptoModel.image),),
                SizedBox(height: 30,),
                SizedBox(height: 15,),
                Text('Preço Atual: R\$ ${NumberFormatter().formatNumber(cryptoModel.price.toString())}',style: TextStyle(fontSize: 24),),
                Text('Preço mais alto até hoje: R\$ ${NumberFormatter().formatNumber(cryptoModel.toString())}'),
                Text('Preço mais Alto nas últimas 24h: R\$ ${NumberFormatter().formatNumber(cryptoModel.high_24h.toString())}'),
                Text('Preço mais baixo nas últimas 24h: R\$ ${NumberFormatter().formatNumber(cryptoModel.low_24h.toString())}'),
            ],
          ),
        ),
      ),
    );
  }
}