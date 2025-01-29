import 'package:flutter/material.dart';
import 'package:islami_app/provider/settings_provider/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
        Text(
          'اذاعة القران الكريم',
          style: provider.currentTheme == ThemeMode.light
              ? TextStyle(color: Colors.black, fontSize: 20)
              : TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous),
            SizedBox(width: MediaQuery.of(context).size.width * 0.06),
            Icon(Icons.play_arrow_outlined),
            SizedBox(width: MediaQuery.of(context).size.width * 0.06),
            Icon(Icons.skip_next)
          ],
        ),
      ],
    );
  }
}
