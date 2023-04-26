# exp1

A new Flutter project.

## common step for all

step 1: crete a flutter project by command flutter create image
step 2: cd image
step 3: flutter run

## adding image to assets

step 1: create a assets derectory in root
step 2: uncomment line number 62 63
 assets:
    - assets/mountain.jpeg
step 3: run $ flutter pub get

## deploy application steps

step 1: image size of 192 *192 to assets 

step 2: in pubspec.yaml 

uncomment line number 62 63
 assets:
    - assets/icon/icon.png


step 3: 

```yaml
dev_dependencies:
  flutter_launcher_icons: "^0.13.1"

flutter_launcher_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/icon/icon.png"
  min_sdk_android: 21 # android min sdk min:16, default 21
```

step 4: run this two command 

```shell
flutter pub get
flutter pub run flutter_launcher_icons:main
```

Step 5: now run $ flutter build appbundle

step 6: last command $ flutter build apk

step 7: apk file build in   build/app/outputs/flutter-apk/app-release.apk     install it on your phone done
