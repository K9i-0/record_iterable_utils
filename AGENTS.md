# Development guide

This is a pure Dart library. The example is a console program, not a Flutter app;
CLI checks are sufficient unless the requested behavior needs additional tests.

## Compatibility

- Preserve the Dart 3.0 minimum and the public extensions for records of arity
  2 through 9. Keep `mapRecord` and `whereRecord` lazy, including callback order,
  generic types, and behavior when the iterable is evaluated again.
- The wide `lints` constraint intentionally supports both Dart 3.0 and current
  stable Dart. Do not raise the package SDK floor just to update development tools.
- For dependency or language changes, check both Dart 3.0 and stable, as in
  `.github/workflows/ci.yml`. Use a separately selected SDK; do not change the
  user's global SDK configuration.

## Verification

Run from the repository root:

```sh
dart pub get
dart format --output=none --set-exit-if-changed .
dart analyze --fatal-infos
dart run example/record_iterable_utils.dart
git diff --check
```

The example prints four mapped student descriptions, then only Bob and David
after filtering. There is currently no `test/` suite: do not report that tests
passed merely because analysis or the example succeeded. For behavior changes,
add focused tests for the affected contract and run them with `dart test`.
For dependency work, also inspect `dart pub outdated`.

For documentation-only changes, validate links and commands instead of rerunning
unrelated runtime checks. Report the commands actually run and any limits.

## Working with existing changes

- Maintainers work and commit directly on `main`, then push without a separate PR. Preserve unrelated local work. Pull requests are for outside contributions and dependency bots.
- Use Conventional Commits. A `main` push runs checks and does not publish.
- Publish only when a release is requested, by pushing `<package>-v<version>` after all release checks pass. Follow [doc/releasing.md](doc/releasing.md); do not run a manual publish command.
