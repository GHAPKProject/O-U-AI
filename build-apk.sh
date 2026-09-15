#!/bin/bash

# OU AI - Flutter APK Build Script
# Builds a release APK for Android deployment

set -e

echo "🚀 OU AI - Flutter APK Builder"
echo "================================"

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter SDK not found. Please install Flutter."
    exit 1
fi

echo "📦 Flutter version:"
flutter --version

echo ""
echo "📥 Getting dependencies..."
flutter pub get

echo ""
echo "🔨 Building APK (Release mode)..."
flutter build apk --release

echo ""
echo "✅ APK Build Complete!"
echo "📍 Location: build/app/outputs/flutter-apk/app-release.apk"
echo ""
echo "📊 APK Info:"
ls -lh build/app/outputs/flutter-apk/app-release.apk

echo ""
echo "🎉 Ready for deployment!"