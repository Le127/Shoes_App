import 'package:flutter/services.dart' as services;

//modifica los iconos de estado superiores del phone
void cambiarStatusLight() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.light);
}

void cambiarStatusDark() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.dark);
}
