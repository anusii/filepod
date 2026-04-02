/// FilePod - Solid file browser application main entry point.
///
// Time-stamp: <Friday 2025-11-21 19:02:07 +1100 Graham Williams>
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
/// This main.dart can be used as a template for any solidui base app (and in
/// general for any Flutter app). It contains no app specific settings but
/// includes some settings that you may want to tune, like the minimum window
/// size for desktop apps, etc.
///
/// Authors: Tony Chen, Graham Williams

library;

import 'package:flutter/material.dart';

import 'package:window_manager/window_manager.dart';

import 'package:filepod/app.dart';
import 'package:filepod/constants/app.dart';
import 'package:filepod/utils/is_desktop.dart';

// 20260402 gjw Below is the main entry point for the application. 
// For main() we require [async] because we asynchronously
// [await] the window manager below. Often, `main()` will include just the
// call [runApp].

void main() async {
  // 20260402 gjw Optionally for development we utilise [debugPrint] to trace
  // execution, and note that the output is not shown on a `--release`. To
  // quieten the `--debug` running we can globally remove [debugPrint] messages
  // by mapping it to null (no op).
  //
  // debugPrint = (String? message, {int? wrapWidth}) {
  //   null;
  // };

  // 20260402 gjw We want to ensure Flutter bindings are initialized for async
  // operations particularly to set the Linux desktop window [title] as we do
  // below.

  WidgetsFlutterBinding.ensureInitialized();

  if (isDesktop) {
    await windowManager.ensureInitialized();

    // 20260402 gjw For our desktop app we tune various window oriented
    // settings.

    const windowOptions = WindowOptions(
      title: appTitle,
      minimumSize: Size(500, 800),
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.normal,
    );

    // 20260402 gjw Now we await the window being shown and recieving the focus,
    // to then proceed to run the app.

    await windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  // 20260402 gjw The runApp() function takes the given Widget and makes it the root of the
  // widget tree.

  runApp(const App());
}
