import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/Client/model/client.dart';

/**
 * Created by Luis Salas on 7/5/2021.
 */

class ClientCard extends StatelessWidget {
  Client client;

  ClientCard(this.client);

  @override
  Widget build(BuildContext context) {
    final clientCard = Card(
      margin: EdgeInsets.all(10),
      color: Colors.yellow.shade200,
      shadowColor: Colors.indigo,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Container(
        height: 200.0,
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo,
                  maxRadius: 30.0,
                  child: Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            clientData()
          ],
        ),
      ),
    );

    return Stack(
      alignment: Alignment(0.0, 0.8),
      children: [clientCard],
    );
  }

  Widget clientData() {
    return Container(
      child: Column(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30.0, top: 10.0),
            child: Row(
              children: [
                dataType("Name: "),
                dataContent(client.name)
              ],
            )
          ),
          Container(
              margin: EdgeInsets.only(left: 30.0, top: 10.0),
              child: Row(
                children: [
                  dataType("Email: "),
                  dataContent(client.email)
                ],
              )
          ),
          Container(
              margin: EdgeInsets.only(left: 30.0, top: 10.0),
              child: Row(
                children: [
                  dataType("Password: "),
                  dataContent(client.password)
                ],
              )
          ),
          Container(
              margin: EdgeInsets.only(left: 30.0, top: 10.0),
              child: Row(
                children: [
                  dataType("Phone Number: "),
                  dataContent(client.phoneNumber)
                ],
              )
          ),
        ],
      ),
    );
  }
  
  Widget dataType(String type){
    return Container(
      child: Text(
        type,
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            color: Colors.black87),
      ),
    );
  }
  
  Widget dataContent(String content){
    return Container(
      child: Text(
        content,
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.black54),
      ),
    );
  }
}
