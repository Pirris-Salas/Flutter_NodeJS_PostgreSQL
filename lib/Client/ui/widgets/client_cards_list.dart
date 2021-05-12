import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/Client/bloc/client_bloc.dart';
import 'package:flutter_api/Client/model/client.dart';
import 'package:flutter_api/Client/ui/widgets/client_card.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

/**
 * Created by Luis Salas on 7/5/2021.
 */

class ClientCardsList extends StatelessWidget{
  ClientBloc clientBloc;

  @override
  Widget build(BuildContext context) {
    clientBloc = BlocProvider.of<ClientBloc>(context);

    return Container(
      child: FutureBuilder<List>(
        future: clientBloc.getClients(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            List list = snapshot.data;
            return ListView(
              children: clientBloc.buildClients(list)
            );
          }
          return CircularProgressIndicator();
        },
      )
    );
  }


}
