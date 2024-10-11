import 'package:aula_mvvm/model/crypto_model.dart';
import 'package:aula_mvvm/viewmodel/number_format.dart';
import 'package:flutter/material.dart';

class CryptoDetailPage extends StatelessWidget {
  const CryptoDetailPage({super.key, required this.crypto});

  final CryptoModel crypto;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('No detalhe: ${crypto.cryptoName} '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
                Image(image: NetworkImage(crypto.image),),
                SizedBox(height: 30,),
                SizedBox(height: 15,),
                Text('Preço Atual: R\$ ${NumberFormatter().formatNumber(crypto.price.toString())}',style: TextStyle(fontSize: 24),),
                Text('Preço mais Alto nas últimas 24h: R\$ ${NumberFormatter().formatNumber(crypto.high_24h.toString())}'),
                Text('Preço mais baixo nas últimas 24h: R\$ ${NumberFormatter().formatNumber(crypto.low_24h.toString())}'),
            ],
          ),
        ),
      ),
    );
  }
}