import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingui/screen/provider/setting_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SettingProvider? settingProviderT;
  SettingProvider? settingProviderF;

  @override
  Widget build(BuildContext context) {
    settingProviderT = Provider.of<SettingProvider>(context, listen: true);
    settingProviderF = Provider.of<SettingProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Settings UI"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Common",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              subtitle: Text("English"),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.cloud),
              title: Text("Environment"),
              subtitle: Text("Production"),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 15),
            ListTile(leading: Icon(Icons.call), title: Text("Phone number")),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sign Out"),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Security",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 15),
            ListTile(
                leading: Icon(Icons.phonelink_lock),
                title: Text("Lock app in background"),
                trailing: Switch(
                  value: settingProviderT!.off,
                  onChanged: (value) => settingProviderF!.onclick(value),
                  activeColor: Colors.red,
                )),
            SizedBox(height: 15),
            ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text("Use fingerprint"),
                trailing: Switch(
                  value: settingProviderT!.on,
                  onChanged: (value) => settingProviderF!.onclick(value),
                  activeColor: Colors.red,
                )),
            SizedBox(height: 15),
            ListTile(
                leading: Icon(Icons.lock),
                title: Text("Change password"),
                trailing: Switch(
                  value: settingProviderT!.off,
                  onChanged: (value) => settingProviderF!.onclick(value),
                  activeColor: Colors.red,
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Misc",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
