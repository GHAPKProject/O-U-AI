# OU AI - Flutter Application

A Flutter-based AI application that provides offline RAG (Retrieval-Augmented Generation) capabilities with advanced image processing and agent orchestration.

## Features

- 🤖 Intelligent Agent Orchestration
- 🖼️ Advanced Image Pipeline Processing
- 📡 Offline RAG (Retrieval-Augmented Generation)
- 🔗 Network Engine Integration
- 🧠 AI Engine Core

## Project Structure

```
ou_ai/
├── lib/
│   ├── services/
│   │   ├── agent_orchestrator.dart    # Agent coordination system
│   │   ├── ai_engine.dart              # Core AI functionality
│   │   ├── image_pipeline.dart         # Image processing
│   │   ├── offline_rag.dart            # Offline RAG system
│   │   └── network_engine.dart         # Network operations
│   └── main.dart                       # App entry point
├── pubspec.yaml                        # Flutter dependencies
└── android/                            # Android-specific configuration
```

## Building APK

### Prerequisites

- Flutter SDK (3.13.0 or later)
- Android SDK
- JDK 11 or later

### Local Build

```bash
# Get dependencies
flutter pub get

# Build release APK
flutter build apk --release

# Build debug APK
flutter build apk --debug
```

### Automated Builds

APK builds are automated via GitHub Actions. Pushes to `main` or `setup-flutter-build` branches trigger automatic builds.

**Artifacts** are available in:
- GitHub Actions Artifacts (retained for 30 days)
- GitHub Releases (for main branch releases)

## Build Configuration

- **Minimum SDK Version**: 21 (Android 5.0)
- **Target SDK Version**: 34 (Android 14)
- **Build Format**: Release APK (optimized & signed)

## Troubleshooting

### Build Fails
1. Ensure all dependencies are installed: `flutter pub get`
2. Check Flutter version: `flutter --version`
3. Update packages: `flutter upgrade`

### APK Too Large
- Enable code shrinking with R8 in `android/app/build.gradle`
- Remove unused dependencies from `pubspec.yaml`

## Release Notes

| Version | Date | Changes |
|---------|------|----------|
| v1.0.0+ | 2026-09-15 | Initial Flutter setup with automated APK builds |

## Support

For issues and feature requests, please open an issue in the GitHub repository.