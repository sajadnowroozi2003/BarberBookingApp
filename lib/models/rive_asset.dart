import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;

  RiveAsset(this.src,
      {required this.artboard,
      required this.stateMachineName,
      required this.title,
      this.input});

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> bottomNavs = [
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "CHAT", stateMachineName: "CHAT_Interactivity", title: "Chat"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
      title: "Search"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "TIMER",
      stateMachineName: "TIMER_Interactivity",
      title: "Chat"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "BELL",
      stateMachineName: "BELL_Interactivity",
      title: "Notifications"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "USER",
      stateMachineName: "USER_Interactivity",
      title: "Profile"),
];

List<RiveAsset> sideMenus = [
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "HOME",
    stateMachineName: "HOME_interactiity",
    title: "Home",
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "SETTINGS",
    stateMachineName: "SETTINGS_interactiity",
    title: "Settings",
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "USER",
    stateMachineName: "USER_interactiity",
    title: "About",
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "LOGOUT",
    stateMachineName: "LOGOUT_interactiity",
    title: "Logout",
  ),
];
