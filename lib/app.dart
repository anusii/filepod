/// FilePod - the primary [MaterialApp] widget.
///
// Time-stamp: <Wednesday 2026-04-29 08:50:10 +1000 Graham Williams>
///
/// Copyright (C) 2026, Software Innovation Institute, ANU.
///
/// Licensed under the GNU General Public License, Version 3 (the "License").
///
/// License: https://opensource.org/license/gpl-3-0.
//
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later
// version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
// details.
//
// You should have received a copy of the GNU General Public License along with
// this program.  If not, see <https://opensource.org/license/gpl-3-0>.
///
/// Authors: Tony Chen, Graham Williams

library;

import 'package:flutter/material.dart';

import 'package:solidui/solidui.dart';

import 'package:filepod/app_scaffold.dart';
import 'package:filepod/constants/app.dart';

// 20260429 gjw This widget is the root of the application.

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SolidThemeApp(
      // 20260429 gjw We can manually turn off the debug banner. It is turn off
      // automatically for a `--release`.

      debugShowCheckedModeBanner: false,

      title: appTitle,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF007AFF),
        ),
        useMaterial3: true,
      ),

      home: SolidLogin(
        image: const AssetImage('assets/images/app_image.jpg'),
        logo: const AssetImage('assets/images/app_icon.png'),
        title: appTitle.replaceAll(' - ', '\n'),
        clientId:
            'https://solidcommunity.au/apps/filepod/client-profile.jsonld',
        redirectUris: [
          'https://solidcommunity.au/apps/filepod/redirect.html',
          'http://localhost:4400/redirect',
          'com.example.filepod://redirect',
        ],
        postLogoutRedirectUris: [
          'https://solidcommunity.au/apps/filepod/redirect.html',
          'http://localhost:4400/redirect',
          'com.example.filepod://redirect',
        ],
        autoLogin: true,
        child: appScaffold,
      ),
    );
  }
}
