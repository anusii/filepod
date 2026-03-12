/// The application scaffold configuration.
///
/// Copyright (C) 2026, Software Innovation Institute, ANU.
///
/// Licensed under the GNU General Public License, Version 3 (the "License");
///
/// License: https://opensource.org/license/gpl-3-0
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
/// Authors: Tony Chen

library;

import 'package:flutter/material.dart';

import 'package:solidui/solidui.dart';

import 'constants/app.dart';
import 'home.dart';
import 'screens/all_pod_files_page.dart';

final _scaffoldController = SolidScaffoldController();

const appScaffold = AppScaffold();

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SolidScaffold(
      controller: _scaffoldController,
      menu: const [
        SolidMenuItem(
          icon: Icons.home,
          title: 'Home',
          tooltip: '''

            **Home:** Tap here to return to the main page for the app.

            ''',
          child: Home(title: appTitle),
        ),
        SolidMenuItem(
          icon: Icons.folder,
          title: 'Files',
          tooltip: '''

            **Files:** Tap here to browse the files on your POD.

            ''',
          child: SolidFile(),
        ),
        SolidMenuItem(
          icon: Icons.storage,
          title: 'All POD Files',
          tooltip: '''

            **All POD Files:** Tap here to browse all folders on your POD
            from the root.

            ''',
          child: AllPodFilesPage(),
        ),
      ],
      appBar: SolidAppBarConfig(
        title: appTitle.split(' - ')[0],
        versionConfig: SolidVersionConfig(
          changelogUrl: 'https://github.com/anusii/filepod/blob/dev/'
              'CHANGELOG.md',
          showDate: true,
          userTextStyle: TextStyle(
            color: theme.colorScheme.onSurface,
          ),
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

        © 2026 Software Innovation Institute, the Australian National University

        ''',
        text: '''

        FilePod is a Solid file browser application that allows you
        to manage files on your personal online data store (POD).

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
      hideNavRail: false,
      onLogout: (context) => SolidAuthHandler.instance.handleLogout(context),
      child: const Home(title: appTitle),
    );
  }
}
