import 'package:flutter/material.dart';

/**
 * Created by Luis Salas on 7/5/2021.
 */

class Client {
   final int id;
   final String name;
   final String email;
   final String password;
   final String phoneNumber;

  Client({
      //Key key,
      @required this.id,
      @required this.name,
      @required this.email,
      @required this.password,
      @required this.phoneNumber
      });

  factory Client.fromJson(Map<String,dynamic> parsedJson){
    return Client(
      id: parsedJson['id'],
      name: parsedJson['name'],
      email: parsedJson['email'],
      password: parsedJson['password'],
      phoneNumber: parsedJson['phoneNumber']
    );
  }
}
