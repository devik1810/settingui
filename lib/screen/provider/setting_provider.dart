import 'package:flutter/cupertino.dart';

class SettingProvider extends ChangeNotifier
{
  bool on=false;
  bool off=false;
  bool onoff=false;
  void click(bool value)
  {
    on=value;
    notifyListeners();
  }
  void onclick(bool value)
  {
    off=value;
    notifyListeners();
  }
  void onoffclick(bool value)
  {
    onoff=value;
    notifyListeners();
  }


}