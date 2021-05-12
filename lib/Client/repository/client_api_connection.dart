import 'package:flutter/material.dart';
import 'package:flutter_api/Client/model/client.dart';
import 'package:flutter_api/Client/ui/widgets/client_card.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ClientApiConnection {
  Map data;
  List clientsList;

  Future<List> getClients() async {
    var url = Uri.parse('https://nodebackendcr.herokuapp.com/api/users');
    http.Response response = await http.get(url);
    //debugPrint(response.body);
    if (response.statusCode != 200) return null;
    data = json.decode(response.body);
    clientsList = data['users'];
    return this.clientsList;
  }

  List<ClientCard> buildClients(List list) {
    List<ClientCard> clientCards = List<ClientCard>();
    list.forEach((element) {
      Client client = new Client.fromJson(element);
      clientCards.add(ClientCard(Client(
        id: client.id,
        name: client.name,
        email: client.email,
        password: client.password,
        phoneNumber: client.phoneNumber
      )));
    });

    return clientCards;
  }
}
