import 'package:flutter/material.dart';

import 'app.dart';
import 'net/network_image_loader.dart';
import 'net/rest_client.dart';
import 'net/socket.dart';

void main() {
  final rest = createRestClient();
  runApp(FindItApp(
    guestToken: rest.guestToken,
    connect: connectWebSocket,
    loadImage: networkImageLoader(),
  ));
}
