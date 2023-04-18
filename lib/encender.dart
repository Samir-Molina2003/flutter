import 'dart:developer';

import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:flutter/material.dart';

class Invernadero extends StatefulWidget {
  static String id = 'Invernadero';

  @override
  State<Invernadero> createState() => _InvernaderoState();
}

late MqttServerClient client;

class _InvernaderoState extends State<Invernadero> {
mqttConnect() async {
  client = MqttServerClient('broker.emqx.io', 'cliente-1');
  client.keepAlivePeriod = 60;
  client.autoReconnect = true;
  client.onConnected = onConnected;
  client.onDisconnected = onDisconnected;

  try {
    if (client.connectionStatus!.state == MqttConnectionState.connected) {
      return;
    }
    await client.connect();
  } on NoConnectionException catch (e) {
    log(e.toString());
  }
}


  void onConnected() {
    log("conectado");
  }

  void onDisconnected() {
    log("desconectado");
  }

  //Método Publicar
  void mqttSend(String message, String topic) {
    final MqttClientPayloadBuilder builder = MqttClientPayloadBuilder();
    builder.addString(message);

    if (client.connectionStatus!.state == MqttConnectionState.connected) {
      client.publishMessage(topic, MqttQos.exactlyOnce, builder.payload!);
    } else {
      log("Error Fatal, No estas Conectado.");
    }
  }

  //Metodo de Publicar

  @override
  void initState() {
    super.initState();
    mqttConnect();
  }

  //crear Interfaz de la App
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              'App MQTT'),
        ),
        drawer: Drawer(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 35, 202, 40))),
                  onPressed: () {
                    //Que encienda la bomba
                    mqttSend('1', "UTP");
                  },
                  child: const Text(
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      'Encender Bomba'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 214, 26, 20))),
                  onPressed: () {
                    //Que apague la bomba
                    mqttSend('0', "UTP");
                  },
                  child: const Text(
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      'Apagar Bomba'),
                ),
              ],
            ),
          ],
        ));
  }
}
