import 'package:flutter_api/Client/model/client.dart';
import 'package:flutter_api/Client/repository/client_api_connection.dart';
import 'package:flutter_api/Client/repository/client_api_repository.dart';
import 'package:flutter_api/Client/ui/widgets/client_card.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ClientBloc implements Bloc{

  final _clientApiRepository = ClientApiRepository();

 Future<List> getClients() async => _clientApiRepository.getClients();

List<ClientCard> buildClients(List list) => _clientApiRepository.builClients(list);

  @override
  void dispose() {
    // TODO: implement dispose
  }

}