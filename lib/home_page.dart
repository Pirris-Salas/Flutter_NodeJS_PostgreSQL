import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/Client/bloc/client_bloc.dart';
import 'package:flutter_api/Client/model/client.dart';
import 'package:flutter_api/Client/ui/widgets/client_cards_list.dart';

import 'Client/ui/widgets/client_card.dart';

class HomePage extends StatefulWidget{

  State<StatefulWidget> createState(){
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{

  ClientBloc clientBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Users List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ClientCardsList()
    );
  }


}