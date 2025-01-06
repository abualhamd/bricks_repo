import 'dart:developer';
import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  // void removeFileFromNestedFolders(Directory directory, String fileName) {
  //   // List all entities in the current directory
  //   List<FileSystemEntity> entities = directory.listSync();

  //   for (FileSystemEntity entity in entities) {
  //     if (entity is File) {
  //       // Check if the file name matches the one to be removed
  //       if (entity.path.endsWith(fileName)) {
  //         try {
  //           // Delete the file
  //           entity.deleteSync();

  //           // context.logger.success("Deleted file: ${entity.path}",
  //           //     style: (msg) {
  //           //   return '[Standard APP] $msg';
  //           // });
  //         } catch (e) {
  //           // context.logger
  //           //     .err("Failed to delete file: ${entity.path}, Error: $e",
  //           //         style: (msg) {
  //           //   return '[Standard APP] $msg';
  //           // });
  //         }
  //       }
  //     } else if (entity is Directory) {
  //       // Recursively call the function for nested directories
  //       removeFileFromNestedFolders(entity, fileName);
  //     }
  //   }
  // }

  // removeFileFromNestedFolders(Directory("lib"), '.gitkeep');

  Future<void> addDependencies() async {
    final progress = context.logger.progress('Installing packages');

    await Process.run(
        'flutter',
        [
          'pub',
          'add',
          'dartz',
          'flutter_bloc',
          'bloc_concurrency',
          'flutter_hooks',
          'get_it',
          "go_router",
          "dio",
          "intl:any",
          "shared_preferences",
          'cached_network_image',
          'equatable',
          'freezed',
          'freezed_annotation',
          'json_annotation',
          'skeletonizer',
        ],
        runInShell: true);
    await Process.run(
        'flutter',
        [
          'pub',
          'add',
          'build_runner',
          'json_serializable',
          'flutter_flavorizr',
          '--dev',
        ],
        runInShell: true);
    await Process.run(
        'flutter',
        [
          'pub',
          'upgrade',
          '--major-versions',
        ],
        runInShell: true);
    await Process.run(
        'flutter',
        [
          'pub',
          'add',
          "flutter_localizations",
          "--sdk=flutter",
        ],
        runInShell: true);
    await Process.run(
        'flutter',
        [
          'gen-l10n',
        ],
        runInShell: true);

    progress.complete();
  }

  Future<void> addFlutterAssets() async {
    const filePath = 'pubspec.yaml'; // Specify the path to your file
    const fileAssets = '''
flutter_assets:
  assets_path: 
    - assets/icons
    - assets/imgs
  output_path: lib/core/utils
  filename: assets_manager.dart
  classname: AssetsManager
  field_prefix:''';

    // Read the file
    final file = File(filePath);

    if (file.toString().contains(fileAssets)) {
      return;
    }

    // Write the modified lines back to the file
    await file.writeAsString(fileAssets, mode: FileMode.append);

    log('flutter_assets yaml added successfully.');
  }

  await addDependencies();
  await addFlutterAssets();
  context.logger.info("Template Generated", style: (msg) {
    return '[Standard APP] $msg';
  });
}
