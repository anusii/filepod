<!-- markdownlint-disable MD033 MD045 MD013 -->

# FilePod

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)

[![GitHub License](https://img.shields.io/github/license/anusii/filepod)](https://raw.githubusercontent.com/anusii/filepod/dev/LICENSE)
[![GitHub Version](https://img.shields.io/badge/dynamic/yaml?url=https://raw.githubusercontent.com/anusii/filepod/dev/pubspec.yaml&query=$.version&label=version&logo=github)](https://github.com/anusii/filepod/blob/dev/CHANGELOG.md)
[![GitHub Last Updated](https://img.shields.io/github/last-commit/anusii/filepod?label=last%20updated)](https://github.com/anusii/filepod/commits/dev/)
[![GitHub Commit Activity (dev)](https://img.shields.io/github/commit-activity/w/anusii/filepod/dev)](https://github.com/anusii/filepod/commits/dev/)
[![GitHub Issues](https://img.shields.io/github/issues/anusii/filepod)](https://github.com/anusii/filepod/issues)

A [Solid](https://solidproject.org) file browser application built
with [Flutter](https://flutter.dev) and
[SolidUI](https://github.com/anusii/solidui). FilePod allows users to
browse, upload, and download files stored on their personal online
data store ([POD](https://solidproject.org/about)), providing a
familiar file-management experience for the decentralised web.

See the [AU Solid Community](https://solidcommunity.au) page for apps
utilising the Solid ecosystem.

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Requirements](#requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
- [Application Structure](#application-structure)
- [Contributing](#contributing)
- [Licence](#licence)

## Features

- **Solid POD File Browsing** — Navigate folders and files stored on
  your Solid POD with an intuitive, responsive interface.

- **File Upload** — Upload files from your local device directly to
  your POD.

- **File Download** — Download files from your POD to your local
  device.

- **All POD Files View** — Browse every folder and file on your POD
  from the root, giving a complete overview of your stored data.

- **Solid Authentication** — Secure login against a Solid server
  using the `SolidLogin` widget.

- **Security Key Management** — Manage encryption keys for private
  data stored on your POD.

- **Responsive Navigation** — Automatically switches between a
  vertical navigation rail (wide screens) and a collapsible navigation
  drawer (narrow screens).

- **Theme Switching** — Toggle between light, dark, and system theme
  modes.

- **Cross-Platform** — Runs on macOS, Linux, Windows, Android, iOS,
  and the Web.

## Screenshots

<div align="center">
  <em>Screenshots to be added.</em>
</div>

## Requirements

- Flutter SDK: `>=3.10.0`
- Dart SDK: `>=3.0.0 <4.0.0`

### Dependencies

FilePod relies on the following key packages:

- [`solidui`](https://github.com/anusii/solidui) — UI components for
  Solid applications
- [`solidpod`](https://github.com/anusii/solidpod) — Solid POD
  integration
- `shared_preferences` — Local storage for settings
- `markdown_tooltip` — Markdown-enabled tooltips
- `window_manager` — Desktop window management

## Installation

### Clone the Repository

```bash
git clone https://github.com/anusii/filepod.git
cd filepod
```

### Install Dependencies

```bash
flutter pub get
```

## Getting Started

### Running the Application

```bash
# macOS
flutter run -d macos

# Linux
flutter run -d linux

# Windows
flutter run -d windows

# Web
flutter run -d chrome
```

### Using the Makefile

A `Makefile` is provided for common development tasks:

```bash
# Run on macOS
make macos

# Run on Linux
make linux

# Run code analysis
make analyze

# Format code
make format

# Full preparation for a pull request
make prep
```

## Application Structure

```
lib/
├── main.dart              # Main entry point
├── app.dart               # Root App widget with SolidThemeApp and SolidLogin
├── app_scaffold.dart      # SolidScaffold configuration (menu, appBar, statusBar)
├── home.dart              # Home page widget
├── constants/
│   └── app.dart           # Application-wide constants
├── screens/
│   └── all_pod_files_page.dart  # Browse all POD files from root
└── utils/
    └── is_desktop.dart    # Desktop platform detection utility
```

### Key Components

#### `main.dart`

Application entry point. Initialises Flutter bindings, configures
the window manager for desktop platforms, and launches the `App()`
widget.

#### `app.dart`

Root widget implementing `SolidThemeApp` with theme configuration
and `SolidLogin` for Solid server authentication. After login, the
`AppScaffold` is displayed.

#### `app_scaffold.dart`

Configures the `SolidScaffold` with:

- **Menu items** — Home, Files, and All POD Files navigation
- **App bar** — Title, version information, and file browser action
- **Status bar** — Server info, login status, and security key status
- **About dialogue** — Application information and links
- **Theme toggle** — Light/dark/system mode switching
- **Logout** — Secure session termination

#### `home.dart`

Welcome page displaying a feature overview and usage guidance.

#### `screens/all_pod_files_page.dart`

A dedicated page that browses all folders and files on the POD
from the root, providing a complete view of the user's stored data.

## Contributing

We welcome contributions! Please follow these guidelines:

1. **Fork** the repository and create a feature branch from `dev`.
2. **Follow** the [coding style
   guidelines](https://survivor.togaware.com/gnulinux/flutter-style.html).
3. **Run** `make prep` before submitting a pull request.
4. **Submit** a pull request using the provided
   [PR template](.github/pull_request_template.md).

### Reporting Issues

- **Bug reports**: Use the [bug report
  template](.github/ISSUE_TEMPLATE/bug_report.md).
- **Feature requests**: Use the [feature request
  template](.github/ISSUE_TEMPLATE/feature_request.md).

### Development Setup

```bash
git clone https://github.com/anusii/filepod.git
cd filepod
flutter pub get
flutter run -d macos
```

## Licence

Copyright (C) 2026, Software Innovation Institute, ANU.

Licensed under the MIT License. See [LICENSE](LICENSE) for details.

## Authors

- Graham Williams
- Tony Chen

For more information about Solid and PODs, visit
[solidproject.org](https://solidproject.org).

## Additional Information

The source code can be accessed via the [GitHub
repository](https://github.com/anusii/filepod). You can also file
issues at [GitHub Issues](https://github.com/anusii/filepod/issues).
The authors of the package will respond to issues as best we can.

<!-- markdownlint-disable MD036 -->
*Time-stamp: <Friday 2026-03-13 00:00:00 +1100 Tony Chen>*
<!-- markdownlint-enable MD036 -->

<!-- markdownlint-disable MD053 -->
[comment]: # (Local Variables:)
[comment]: # (time-stamp-line-limit: -8)
[comment]: # (End:)
<!-- markdownlint-enable MD053 -->
