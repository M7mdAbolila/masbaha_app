import 'dart:io';

void main() {
  final projectPath = "${Directory.current.path}/lib";

  final directories = [
    '$projectPath/core/helpers',
    '$projectPath/core/routing',
    '$projectPath/core/theming',
    '$projectPath/core/widgets',
    '$projectPath/core/helpers',
    '$projectPath/core/theming',
    '$projectPath/features/home',
    '$projectPath/features/home/ui',
    '$projectPath/features/home/ui/widgets',
    '$projectPath/features/home/logic',
    '$projectPath/features/home/data',
    '$projectPath/features/home/data/models',
  ];

  final files = [
    '$projectPath/core/helpers/constants.dart',
    '$projectPath/core/helpers/extensions.dart',
    '$projectPath/core/helpers/spacing.dart',
    '$projectPath/core/routing/app_router.dart',
    '$projectPath/core/routing/routes.dart',
    '$projectPath/core/theming/colors.dart',
    '$projectPath/core/theming/text_styles.dart',
  ];

  for (var dir in directories) {
    final directory = Directory(dir);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      print('Directory Created: $dir ✔');
    } else {
      print('Directory already exists: $dir ');
    }
  }

  print('create folders success');

  for (var filePath in files) {
    final file = File(filePath);
    if (!file.existsSync()) {
      file.createSync(recursive: true);
      print('File Created: $filePath ✔');
    } else {
      print('File already exists: $filePath ');
    }
  }
  print('create files success');
}
