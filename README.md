# File Pod - A File Browser For Your Solid Pod

> File Management with Secure and Private Solid Pod Storage

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)

[![Github Docs](https://img.shields.io/badge/GitHub-Pages-green?logo=gitbook)](https://anusii.github.io/filepod)
[![Github Repo](https://img.shields.io/badge/GitHub-Repo-blue?logo=github)](https://github.com/anusii/filepod)
[![GitHub License](https://img.shields.io/github/license/anusii/filepod)](https://raw.githubusercontent.com/anusii/filepod/dev/LICENSE)
[![GitHub Version](https://img.shields.io/badge/dynamic/yaml?url=https://raw.githubusercontent.com/anusii/filepod/dev/pubspec.yaml&query=$.version&label=version&logo=github)](https://github.com/anusii/filepod/blob/dev/CHANGELOG.md)
[![GitHub Last Updated](https://img.shields.io/github/last-commit/anusii/filepod?label=last%20updated)](https://github.com/anusii/filepod/commits/dev/)
[![GitHub Commit Activity (dev)](https://img.shields.io/github/commit-activity/w/anusii/filepod/dev)](https://github.com/anusii/filepod/commits/dev/)
[![GitHub Issues](https://img.shields.io/github/issues/anusii/filepod)](https://github.com/anusii/filepod/issues)

[FilePod](https://anusii.github.io/filepod/) is a file browser for
browsing, uploading, and downloading files stored on your personal
online data store ([Pod](https://solidproject.org/about)), providing a
familiar file-management experience for the decentralised web. Your
Pod sits in a personal Data Vault on a Solid server in the cloud,
where everything is stored encrypted and stays within the Pod. No
data leaves the Pod unless you explicitly download it, so you stay in
control. The app is supported by the [Software Innovation
Institute](https://sii.anu.edu.au) and implemented by Tony Chen and
[Graham Williams](https://togaware.com/Graham.Williams.html) using
[Flutter](https://flutter.dev)'s
[SolidUI](https://github.com/anusii/solidui) package for cross
platform development.

Solid Pods are a new approach to handling your personal data on the
World Wide Web and is the latest innovation from the inventor of the
WWW, Sir Tim Berners-Lee. Obtain a Pod for yourself on any Solid
server and link it to your app.

We make this project available for free so if you appreciate the app
then please show some ❤️ and tap on the star at
[GitHub](https://github.com/anusii/filepod) to support our work. See
the [AU Solid Community](https://solidcommunity.au) **showcase** for
many more apps using the Solid ecosystem.

The latest version of the app can be run online at
[filepod.solidcommunity.au](https://filepod.solidcommunity.au) with no
installation required though requiring a Solid login, or downloaded
and installed for your platform from the [Solid Community
AU](https://solidcommunity.au) repository:

<!-- markdownlint-disable MD036 -->
+ **Web**
  [solidcommunity](https://filepod.solidcommunity.au/);
+ **Android**
  [aab](https://solidcommunity.au/installers/filepod.aab) or
  [apk](https://solidcommunity.au/installers/filepod.apk);
+ **GNU/Linux**
  [deb](https://solidcommunity.au/installers/filepod_amd64.deb) or
  [snap](https://solidcommunity.au/installers/filepod_amd64.snap) or
  [zip](https://solidcommunity.au/installers/filepod-linux.zip);
+ **macOS**
  [dmg](https://solidcommunity.au/installers/filepod-macos.dmg) or
  [zip](https://solidcommunity.au/installers/filepod-macos.zip);
+ **Windows**
  [inno](https://solidcommunity.au/installers/filepod-windows-inno.exe) or
  [zip](https://solidcommunity.au/installers/filepod-windows.zip).

[Installation
details](https://github.com/anusii/filepod/blob/dev/installers/README.md)
are available for all platforms.

Contributions are welcome. Visit
[github](https://github.com/anusii/filepod) to submit an issue or,
even better, fork the repository yourself, update the code, and submit
a Pull Request. The app is implemented in
[Flutter](https://flutter.dev) using
[solidui](https://pub.dev/packages/solidui). Thanks.

## Introduction

FilePod gives you a familiar file-manager experience for your Solid
Pod. You can browse folders, upload files from your local device,
download files back, and view the entire contents of your Pod from
the root — all without leaving your Pod's secure, encrypted storage.
The app is multi-platform so you can install it for your desktop or
mobile device, or run it directly through a web browser, all
accessing the same files in your Pod.

FilePod also serves as a reference template for any SolidUI-based
Flutter app — wrapping the SolidUI `SolidFile()` widget with a
typical SolidScaffold setup that you can adapt for your own project.

<!-- markdownlint-disable MD033 -->

<div align="center">
  <img
 src="https://github.com/user-attachments/assets/312db6e4-7d42-4f0d-8ff2-e417f22cfc33"
 alt="Login page of FilePod" width="600">
  <br/>
  <img
 src="https://github.com/user-attachments/assets/3c3cc414-8d58-4d85-8a79-5207e1cb172e"
 alt="Home page of FilePod" width="600">
</div>

<!-- markdownlint-enable MD033 -->

---

## Quick start

The typical workflow is:

1. **Sign in** to your Solid Pod using the SolidLogin screen on first
   launch.
2. **Browse** to **App Files** to see files specific to FilePod, or
   to **All POD Files** to see your entire Pod from the root.
3. **Upload** a file from your local device by tapping the upload
   action in the file browser.
4. **Download** a file by tapping it (or its download action) to save
   a copy back to your local device.

---

## The three screens

A left-hand navigation rail (or collapsible drawer on narrow screens)
gives you:

### Home

Welcome page with a quick feature overview and pointers to the file
browser views. Tap the home icon at any time to return here.

### App Files

Browse files in the FilePod-specific folder on your Pod. Useful when
other Solid apps share the same Pod and you want a focused view of
just FilePod's files.

### All POD Files

Browse every folder and file on your Pod, starting at the root.
Gives a complete overview of everything stored in your Pod —
including files created by other Solid apps.

---

## Working with files

The file browser supports the actions you'd expect from a desktop
file manager:

+ **Tap a folder** — open it and see its contents.
+ **Tap a file** — preview, download, or open it (depending on the
  file type).
+ **Upload** — pick a file from your local device and copy it into
  the current folder.
+ **Download** — save a file from your Pod back to your local
  device.
+ **Breadcrumb path** — navigate back up the folder hierarchy at any
  point.

The navigation automatically adapts to window size: a vertical
navigation rail on wide screens and a collapsible drawer on narrow
ones.

---

## Sharing files with others

Use the standard Solid permission flow to share files or folders
with another Pod owner. The recipient adds your WebID to their app
and gains read or read/write access, depending on the permission
you grant.

The **invite** action in the app bar offers a quick way to invite
another user to start using their own Pod and access shared
resources from yours.

---

## Security keys

Some files on your Pod are encrypted for privacy. FilePod manages
the security key needed to read and write encrypted data through
the standard SolidPod flow. The status bar at the bottom of the
window shows your current security-key state — if a key is
required, tap the indicator to enter your password and the app will
unlock the relevant files automatically.

---

## Theme

A theme toggle in the app bar lets you switch between **light**,
**dark**, and **system** modes. The choice is remembered across
sessions.

---

## About info

Tap the **info** (ℹ) button in the top app bar at any time to see a
brief about-the-app dialog with the version number, key features,
and links to the GitHub repository and the Australian Solid
Community.

---

## Data and privacy

All files live in your Solid Pod, in the standard folder structure
maintained by the Pod server. You authenticate to your Pod when you
start the app, and any encrypted files are handled through the
SolidPod security-key flow shown in the status bar.

If you log into a fresh Pod, FilePod doesn't create any specific
files of its own — it simply browses whatever folders and files
already exist on the Pod. Nothing about your files ever leaves
your Pod unless you explicitly download a file to your local
device.

---

## Troubleshooting

**The browser shows "loading…" forever after login.**
The status bar at the bottom of the window shows your security-key
state. If the key is missing, tap it and provide your password —
encrypted file listings appear automatically once the key is saved.

**Uploaded files don't appear immediately.**
Pull down (or refresh) the folder view to fetch the latest listing
from your Pod. Some Solid servers cache directory listings briefly.

**Files I expected to be shared aren't visible.**
The other Pod owner needs to have granted your WebID access to
that resource. Check **All POD Files** to confirm what's actually
on your Pod, and ask the owner to verify the permissions.

---

## Authors

+ Graham Williams
+ Tony Chen

For more information about Solid and PODs, visit
[solidproject.org](https://solidproject.org).

---

## License

GNU General Public License v3. See `LICENSE` or
<https://opensource.org/license/gpl-3-0>.

Copyright (C) 2026, Software Innovation Institute, ANU.
