import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingui/screen/provider/setting_provider.dart';
import 'package:settingui/screen/view/home-view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SettingProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    ),
  );
}
