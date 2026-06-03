/// FilePod - display all folders from the root of a user's pod.
///
// Time-stamp: <Thursday 2026-06-04 07:47:28 +1000 Graham Williams>
///
/// Copyright (C) 2026, Software Innovation Institute, ANU.
///
/// Licensed under the GNU General Public License, Version 3 (the "License");
///
/// License: https://www.gnu.org/licenses/gpl-3.0.html
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
// this program. If not, see <https://www.gnu.org/licenses/gpl-3.0.html>.
///
/// Authors: Tony Chen, Graham Williams

library;

import 'package:flutter/material.dart';

import 'package:solidui/solidui.dart';

import 'package:filepod/constants/app.dart';

class BrowseFiles extends StatelessWidget {
  const BrowseFiles({super.key});

  @override
  Widget build(BuildContext context) {
    // 20260604 gjw SolidFile() from `solidui` is a comprehensive file browser
    // for resources contained in your data vault hosted on any Solid server.

    return const SolidFile(
      currentPath: SolidFile.podRoot,
      friendlyFolderName: 'All Files and Folders',
      uploadConfig: filepodUploadConfig,
    );
  }
}
