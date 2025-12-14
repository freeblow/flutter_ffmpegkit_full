#!/bin/bash
#https://github.com/freeblow/ffmpeg_kit_flutter/releases/download/macos_full_gpl/ffmpeg-kit-macos-full-gpl-7.1.1.zip
# Download and unzip MacOS framework
MACOS_URL="https://github.com/freeblow/ffmpeg_kit_flutter/releases/download/macos_full_gpl/ffmpeg-kit-macos-full-gpl-7.1.1.zip"
mkdir -p Frameworks 
curl -L $MACOS_URL -o frameworks.zip
unzip -o frameworks.zip  -d Frameworks
rm frameworks.zip


# Delete bitcode from all frameworks
# xcrun bitcode_strip -r Frameworks/ffmpegkit.xcframework/macos-arm64_x86_64/ffmpegkit.framework/ffmpegkit -o Frameworks/ffmpegkit.xcframework/macos-arm64_x86_64/ffmpegkit.framework//ffmpegkit
# xcrun bitcode_strip -r Frameworks/libavcodec.xcframework/macos-arm64_x86_64/libavcodec.framework/libavcodec -o Frameworks/libavcodec.xcframework/macos-arm64_x86_64/libavcodec.framework/libavcodec
# xcrun bitcode_strip -r Frameworks/libavdevice.xcframework/macos-arm64_x86_64/libavdevice.framework/libavdevice -o Frameworks/libavdevice.xcframework/macos-arm64_x86_64/libavdevice.framework/libavdevice
# xcrun bitcode_strip -r Frameworks/libavfilter.xcframework/macos-arm64_x86_64/libavfilter.framework/libavfilter -o Frameworks/libavfilter.xcframework/macos-arm64_x86_64/libavfilter.framework/libavfilter
# xcrun bitcode_strip -r Frameworks/libavformat.xcframework/macos-arm64_x86_64/libavformat.framework/libavformat -o Frameworks/libavformat.xcframework/macos-arm64_x86_64/libavformat.framework/libavformat    
# xcrun bitcode_strip -r Frameworks/libavutil.xcframework/macos-arm64_x86_64/libavutil.framework/libavutil -o Frameworks/libavutil.xcframework/macos-arm64_x86_64/libavutil.framework/libavutil
# xcrun bitcode_strip -r Frameworks/libswresample.xcframework/macos-arm64_x86_64/libswresample.framework/libswresample -o Frameworks/libswresample.xcframework/macos-arm64_x86_64/libswresample.framework/libswresample
# xcrun bitcode_strip -r Frameworks/libswscale.xcframework/macos-arm64_x86_64/libswscale.framework/libswscale -o Frameworks/libswscale.xcframework/macos-arm64_x86_64/libswscale.framework/libswscale
