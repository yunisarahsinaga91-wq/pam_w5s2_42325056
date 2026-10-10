import 'package:flutter/material.dart';

class InstagramConnectSwitch extends StatefulWidget {
  const InstagramConnectSwitch({super.key});

  @override
  State<InstagramConnectSwitch> createState() =>
      _InstagramConnectSwitchState();
}

class _InstagramConnectSwitchState extends State<InstagramConnectSwitch> {
  bool isOn = false; // State: status switch, awalnya OFF

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram Connect Switch Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Connect Instagram'),
            const SizedBox(width: 8),
            Switch(
              value: isOn, // Posisi switch mengikuti nilai isOn
              onChanged: (bool val) {
                setState(() {
                  isOn = val; // Simpan nilai baru lalu gambar ulang UI
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
