# OU AI Project - Setup Instructions

## 📋 Project Overview

**OU AI** is a Flutter application with the following architecture:

```
ou_ai/
├── lib/
│   ├── services/
│   │   ├── agent_orchestrator.dart      (Agent coordination)
│   │   ├── ai_engine.dart                (AI core)
│   │   ├── image_pipeline.dart           (Image processing)
│   │   ├── offline_rag.dart              (Offline RAG system)
│   │   └── network_engine.dart           (Network operations)
│   ├── main.dart                         (App entry point)
│   └── ...                               (Other app files)
├── android/                              (Android configuration)
├── ios/                                  (iOS configuration)
├── pubspec.yaml                          (Dependencies)
└── build/                                (Build output - generated)
```

## 🚀 Getting Started

### Step 1: Extract Project from ZIP
The project is currently in `OU_AI_Project.zip`. Extract it:

```bash
unzip OU_AI_Project.zip
cd ou_ai
```

### Step 2: Install Flutter Dependencies
```bash
flutter pub get
```

### Step 3: Verify Flutter Setup
```bash
flutter doctor
```

Expected output should show:
- ✓ Flutter SDK
- ✓ Android toolchain
- ✓ Connected devices (optional)

### Step 4: Build APK

#### Option A: Using Build Script (Recommended)
```bash
chmod +x build-apk.sh
./build-apk.sh
```

#### Option B: Using Flutter Command
```bash
flutter build apk --release
```

**Output**: `build/app/outputs/flutter-apk/app-release.apk`

## 📁 File Structure

| File | Purpose |
|------|---------|
| `pubspec.yaml` | Flutter dependencies & metadata |
| `build-apk.sh` | Local APK build automation script |
| `BUILD_CONFIG.md` | Build configuration documentation |
| `.github/workflows/build-apk.yml` | GitHub Actions CI/CD workflow |
| `README.md` | Project overview & documentation |
| `.gitignore` | Git ignore rules |

## 🔧 Configuration Files

### pubspec.yaml
Contains:
- App name and version
- Flutter SDK requirements
- Dependencies (plugins, packages)
- Assets (images, fonts)

### .github/workflows/build-apk.yml
Triggers automated APK builds on:
- Push to `main` branch
- Push to `setup-flutter-build` branch
- Manual trigger available

## 📦 Build Outputs

After successful build, you'll find:
- **APK File**: `build/app/outputs/flutter-apk/app-release.apk`
- **Build Logs**: Console output with timestamps
- **Artifacts**: Available in GitHub Actions (30-day retention)

## ✅ Checklist

- [ ] Flutter SDK installed (`flutter --version`)
- [ ] Android SDK configured
- [ ] Project extracted from ZIP
- [ ] Dependencies installed (`flutter pub get`)
- [ ] APK built successfully (`flutter build apk --release`)
- [ ] APK tested on device or emulator

## 📖 Documentation

- **BUILD_CONFIG.md** - Detailed build configuration & troubleshooting
- **README.md** - Project features & overview
- **Flutter Docs** - https://flutter.dev/docs

## 🎯 Next Steps

1. ✅ Extract and setup project (done via `setup-flutter-build` branch)
2. ⏭️ Configure app signing for production
3. ⏭️ Set up version management
4. ⏭️ Configure analytics/crash reporting
5. ⏭️ Submit to Google Play Store

## 🆘 Troubleshooting

### Build Fails
```bash
flutter clean
flutter pub get
flutter build apk --release
```

### Emulator Issues
```bash
flutter emulators
flutter emulators launch <emulator_id>
```

### Dependency Conflicts
```bash
flutter pub upgrade
flutter pub get
```

## 📞 Support

For issues:
1. Check `BUILD_CONFIG.md` troubleshooting section
2. Review GitHub Actions build logs
3. Open an issue in the repository

---

**Status**: ✅ Ready for APK compilation
**Last Updated**: 2026-09-15
