import 'package:flutter_api/Client/model/client.dart';
import 'package:flutter_api/Client/repository/client_api_connection.dart';
import 'package:flutter_api/Client/ui/widgets/client_card.dart';

class ClientApiRepository{

  final _clientApiConnection = ClientApiConnection();

  Future<List> getClients() async => _clientApiConnection.getClients();

  List<ClientCard> builClients(List list) => _clientApiConnection.buildClients(list);

}