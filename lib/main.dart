import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_api/Client/bloc/client_bloc.dart';
import 'package:flutter_api/home_page.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomePage(),
        ),
        bloc: ClientBloc()
    );
  }
}