/// FilePod - application scaffold configuration.
///
// Time-stamp: <Tuesday 2026-05-12 14:45:00 +1000 Tony Chen>
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
// this program. If not, see <https://opensource.org/license/gpl-3-0>.
///
/// Authors: Tony Chen, Graham Williams

library;

import 'package:flutter/material.dart';

import 'package:solidui/solidui.dart';

import 'package:filepod/constants/app.dart';
import 'package:filepod/home.dart';
import 'package:filepod/screens/browse_files.dart';

final _scaffoldController = SolidScaffoldController();

const appScaffold = AppScaffold();

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return SolidScaffold(
      controller: _scaffoldController,
      hideNavRail: false,
      enableProfile: true,
      onLogout: (context) => SolidAuthHandler.instance.handleLogout(context),
      menu: const [
        SolidMenuItem(
          icon: Icons.home,
          title: 'Home',
          tooltip: '''

            **Home**\nTap here to return to the main page for the app.

            ''',
          child: Home(title: appTitle),
        ),
        SolidMenuItem(
          icon: Icons.folder,
          title: 'App Files',
          tooltip: '''

            **Files**\nTap here to browse the files on your POD for this app.

            ''',
          child: SolidFile(),
        ),
        SolidMenuItem(
          icon: Icons.storage,
          title: 'All POD Files',
          tooltip: '''

            **All Files**\nTap here to browse all folders on your POD
            from the root.

            ''',
          child: BrowseFiles(),
        ),
      ],
      appBar: SolidAppBarConfig(
        title: appTitle.split(' - ')[0],
        versionConfig: const SolidVersionConfig(
          changelogUrl: 'https://github.com/anusii/filepod/blob/dev/'
              'CHANGELOG.md',
          showDate: true,
          showUpdateButton: true,
          downloadUrl: 'https://github.com/anusii/filepod/releases',
        ),
        actions: [
          SolidAppBarAction(
            icon: Icons.folder,
            onPressed: () => _scaffoldController.navigateToSubpage(
              const SolidFile(),
            ),
            tooltip: 'Files',
          ),
        ],
      ),
      statusBar: const SolidStatusBarConfig(
        serverInfo: SolidServerInfo(serverUri: SolidConfig.defaultServerUrl),
        loginStatus: SolidLoginStatus(),
        securityKeyStatus: SolidSecurityKeyStatus(),
      ),
      aboutConfig: SolidAboutConfig(
        applicationName: appTitle.split(' - ')[0],
        applicationIcon: Image.asset(
          'assets/images/app_icon.png',
          width: 64,
          height: 64,
        ),
        applicationLegalese: '''

        © 2026 Software Innovation Institute, ANU

        ''',
        text: '''

        FilePod is a file browser application that allows you to manage files on
        your personal online data store (Pod) hosted on a Solid server.

        Key features:

        📂 Browse and manage files on your Solid POD;

        📤 Upload files to your POD;

        📥 Download files from your POD;

        🔐 Security key management for encrypted data;

        🎨 Theme switching (light/dark/system);

        🧭 Responsive navigation (rail ↔ drawer).

        For more information, visit the
        [FilePod](https://github.com/anusii/filepod) GitHub repository and our
        [Australian Solid Community](https://solidcommunity.au) web site.

        ''',
      ),
      themeToggle: const SolidThemeToggleConfig(
        enabled: true,
        showInAppBarActions: true,
      ),
      child: const Home(title: appTitle),
    );
  }
}
