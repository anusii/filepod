/// FilePod - app-wide constants.
///
// Time-stamp: <Thursday 2026-06-04 08:02:55 +1000 Graham Williams>
///
/// Copyright (C) 2025-2026, Software Innovation Institute, ANU
///
/// Licensed under the GNU General Public License, Version 3 (the "License");
///
/// License: https://opensource.org/license/gpl-3-0
//
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

import 'package:solidui/solidui.dart' show SolidInviteOthersConfig;

/// Application title displayed as the window title.

const String appTitle = 'FilePod - File Browser for Solid Pods';

/// Public URL where FilePod is hosted. Used by the Invite Others
/// feature to send a working link to the recipient.

const String appUrl = 'https://filepod.solidcommunity.au/';

/// Application-wide Invite Others configuration shared by the
/// AppBar share button and the App Info dialog so that users can
/// invite others to set up their POD and try FilePod.

const SolidInviteOthersConfig inviteOthersConfig = SolidInviteOthersConfig(
  applicationName: 'FilePod',
  appUrl: appUrl,
  appDescription:
      'manage/share resources hosted on your Solid server using FilePod',
  messageTemplate: '''
You might like to try the {appName} app, available online here:

{appUrl}

Signing into {appName} will set up your data vault so you can manage and
exchange files privately with other Solid users.

''',
  subject: 'Try the FilePod app on your Solid POD',
  tooltip: '''

  **Invite Others**

  Tap to invite someone else to try FilePod. You can copy the
  invitation to the clipboard or share it through any messaging app
  installed on your device.

  ''',
);
