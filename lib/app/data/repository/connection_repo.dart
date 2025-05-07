import 'dart:convert';

import 'package:location_tracker/app/core/value/signal_r_keys.dart';
import 'package:signalr_netcore/hub_connection.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';

import '../../network/apis.dart';

/// connection repo ro handle all Signal R operations
class ConnectionRepo {
  HubConnection? _hubConnection;

  HubConnection getHubConnection() {
    return _hubConnection ??=
        HubConnectionBuilder().withUrl(Apis.locationHub).build();
  }

  Future start() async {
    if (getHubConnection().state == HubConnectionState.Disconnected) {
      await getHubConnection().start();
    }
  }

  void sendLatLon(double lat, double lon) async {
    await start();
    getHubConnection().invoke(SignalRKeys.sendLatLon, args: [lat, lon]);
  }

  void getLatLon(Function(String) onListen) async {
    await start();
    getHubConnection().on(SignalRKeys.receiveLatLon, (arguments) {
      onListen(arguments![0].toString());
    });
  }

  void stop() async {
      await _hubConnection?.stop();
      _hubConnection = null;
  }
}
