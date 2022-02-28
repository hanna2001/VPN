import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
Color bgOne = Color(0xff002e99);
Color bgTwo = Color(0xff6699cc);
Color btColor = Color(0xff0066cc);



TextStyle styleOne= TextStyle(
    fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white);

TextStyle styleTwo= TextStyle(fontWeight: FontWeight.normal,
    fontSize: 15,color: Colors.white70);


List <IconData> icons = [MdiIcons.lightningBoltCircle,MdiIcons.downloadCircle,MdiIcons.cancel,MdiIcons.incognitoCircle,MdiIcons.cloudCircle,MdiIcons.shieldCrown];
List<String> titles = ["Fast","Unlimited","Remove Ads","Anonymous","Remove Ads","Secure"];
List<String> subtitles = [
  "Up to 1000Mb/s bandwidth to explore the world",
  "Get unlimited bandwidth, speed and traffic",
  "Have fun surfing without annoying ad",
  "Hide your IP Anonymous surfing",
  "500+ servers around the world",
  "Transfer obfuscate traffic via encrypted tunnel",];