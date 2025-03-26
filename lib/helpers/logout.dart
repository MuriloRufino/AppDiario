
import 'package:flutter/material.dart';
import 'package:flutter_webapi_first_course/screens/common/confirmation_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

logout(BuildContext context) {
    SharedPreferences.getInstance().then((prefs) {
      prefs.clear();
      if (context.mounted) {
        showConfirmationDialog(context,
                content: "Deseja sair?", affirmativeOption: "Sair")
            .then((value) {
          if (value != null && value && context.mounted) {
            Navigator.pushReplacementNamed(context, "login");
          }
        });
      }
    });
  }