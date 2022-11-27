## Fundamental Flutter

A new Flutter project.

### Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Some bug(s) and how to avoid them
- [Custom Font](https://docs.flutter.dev/cookbook/design/fonts)

### Configure ANDROID_SDK_ROOT

1. Open file **.bashrc** inside home/tuanvu

2. Write some more shell script command to declare environtment variables
```
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
```

3. Thực thi các câu lệnh gán trên bằng lệnh:
```
exec bash
```

4. Kiểm tra các biến môi trường bằng lệnh:
```
81:~$ echo $ANDROID_SDK_ROOT
/home/tuanvu/Android/Sdk
```

### Connect physical devices (Linux - Android)

1. "Tùy chọn cho nhà phát triển" > enable "Gỡ lỗi USB" (USB Debugging)
Allow to transfer file(s) from laptop to smart phone

2. Check connection from physical devices (OPPO) to laptop by the following commands:
```
81:~$ lsusb
Bus 002 Device 002: ID ****:**** Intel Corp. Integrated Rate Matching Hub
Bus 004 Device 001: ID ****:**** Linux Foundation 3.0 root hub
Bus 003 Device 018: ID ****:**** Pixart Imaging, Inc. Optical Mouse
Bus 003 Device 021: ID (IDID):**** OPPO XXXXXX-QRD _SN:(YYYYYYYY)
```

3. Get up & Running by the following commands (IDID are 4 digits (id) of the physical devices)
```
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="(IDID)", MODE="0666", GROUP="plugdev"' | sudo tee /etc/udev/rules.d/51-android-usb.rules
```

4. Kiểm tra kết nối từ physical devices (OPPO) đến Android Debug Bridge, với (YYYYYYYY) là phần cuối của câu lệnh liệt kê lsusb cho physical devices :
```
81:~$ adb devices
List of devices attached
(YYYYYYYY)	device
```

### Basic commands

1. Create new flutter project
```
$ flutter create <project_name>
```

2. Check connected devices
```
$ flutter devices
```

3. Start a project with debug mode
```
$ flutter run
```

### Linux VSCode commands
- `Ctrl P`: move to already opened file