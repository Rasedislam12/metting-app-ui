import 'package:flutter/material.dart';
import 'package:agora_uikit/agora_uikit.dart';

class videocall extends StatelessWidget {
  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: "03da384a8fc94cc1a0b3443cf6d4959e",
          channelName: 'test',
          tempToken:
              "00603da384a8fc94cc1a0b3443cf6d4959eIAAxwpV8s//E4/3HLxl7JH0u2bThysmyMsU1iDRxStgDsAx+f9gAAAAAEACr2kwLKIt6YgEAAQAoi3pi"),
      enabledPermission: [Permission.camera, Permission.microphone]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          AgoraVideoViewer(client: _client),
          AgoraVideoButtons(client: _client)
        ],
      )),
    );
  }
}
