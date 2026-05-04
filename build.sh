#!/bin/bash
set -e

SCHEME="testXcBuild"
DEVICE="platform=iOS Simulator,name=iPhone 16"

echo "🔨 Cleaning..."
xcodebuild -scheme $SCHEME clean

echo "🏗 Building..."
xcodebuild -scheme $SCHEME -destination "$DEVICE" build

echo "✅ Build Success"
