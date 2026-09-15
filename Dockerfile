# Get the official Flutter image
FROM cirrusci/flutter:latest

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Get Flutter dependencies
RUN flutter pub get

# Build APK
RUN flutter build apk --release

# Expose the build output
FROM ubuntu:latest
RUN apt-get update && apt-get install -y android-tools-adb
COPY --from=0 /app/build/app/outputs/flutter-apk/app-release.apk /output/
VOLUME ["/output"]
