# Build Configuration for OU AI Flutter Project

## Android APK Compilation Guide

### Prerequisites
- ✅ Flutter SDK 3.13.0+
- ✅ Android SDK (API 34+)
- ✅ Java Development Kit (JDK 11+)
- ✅ Git

### Quick Start

#### Option 1: Automated Build (GitHub Actions)
1. Push code to `main` branch
2. GitHub Actions automatically builds APK
3. Download from "Releases" or "Actions" tab

#### Option 2: Local Build
```bash
# Make script executable
chmod +x build-apk.sh

# Run build script
./build-apk.sh
```

#### Option 3: Manual Flutter Build
```bash
# Get dependencies
flutter pub get

# Build APK (Release)
flutter build apk --release

# Build APK (Debug)
flutter build apk --debug
```

### Output Locations

| Build Type | Output Path |
|-----------|------------|
| Release APK | `build/app/outputs/flutter-apk/app-release.apk` |
| Debug APK | `build/app/outputs/flutter-apk/app-debug.apk` |

### Build Properties

```
App Name: OU AI
Package Name: com.ouai.app
Min SDK: 21 (Android 5.0)
Target SDK: 34 (Android 14)
Build Output: APK (Application Package)
```

### Troubleshooting

#### Issue: "Flutter command not found"
```bash
# Add Flutter to PATH
export PATH="$PATH:$HOME/flutter/bin"
```

#### Issue: "Android SDK not found"
```bash
# Install Android SDK or set ANDROID_HOME
export ANDROID_HOME=$HOME/Android/Sdk
```

#### Issue: "Gradle build failed"
```bash
# Clean and rebuild
flutter clean
flutter pub get
flutter build apk --release
```

#### Issue: "APK too large"
- Enable code shrinking in `android/app/build.gradle`
- Remove unused dependencies from `pubspec.yaml`

### Performance Optimization

To reduce APK size:
1. **Enable Shrinking**: Set `minifyEnabled true` in build.gradle
2. **Remove Debug Info**: Build with `--release` flag
3. **Optimize Assets**: Compress images before adding

### Release Distribution

#### Via GitHub Releases
1. APK automatically uploaded to releases
2. Accessible from repository "Releases" page
3. Retained for version history

#### Direct APK Installation
```bash
# Install on connected device
flutter install

# Or manually
adb install build/app/outputs/flutter-apk/app-release.apk
```

### Signing Configuration (Optional)

For production releases, configure signing:
1. Create keystore: `keytool -genkey -v -keystore key.jks`
2. Add to `android/local.properties`:
   ```
   storeFile=../key.jks
   storePassword=yourPassword
   keyAlias=key
   keyPassword=yourPassword
   ```

### Next Steps

- ✅ Configure app signing for production
- ✅ Set up app version management
- ✅ Configure crash reporting
- ✅ Set up analytics

### Support

For build issues:
1. Check Flutter documentation: https://flutter.dev/docs
2. Review GitHub Actions logs in "Actions" tab
3. Open an issue in repository

---
**Last Updated**: 2026-09-15