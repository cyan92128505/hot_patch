# hot_patch

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

```
export FLUTTER_ENGINE=/Users/aomashinku/Dev/flutter-engine/engine/src
flutter run --local-engine-src-path=/Users/aomashinku/Dev/flutter-engine/engine/src  --local-engine=ios_debug_unopt
```

[https://juejin.im/post/5c24acd5f265da6164141236](https://juejin.im/post/5c24acd5f265da6164141236)

```
./flutter/tools/gn --ios --unoptimized && ./flutter/tools/gn --unoptimized
ninja -C out/ios_debug_unopt && ninja -C out/host_debug_unopt
```
