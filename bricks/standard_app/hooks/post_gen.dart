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
          'flutter_bloc',
          'get_it',
          "go_router",
          "dio",
          "intl:any",
          "graphql_flutter",
          "shared_preferences",
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

  await addDependencies();
  context.logger.info("Template Generated", style: (msg) {
    return '[Standard APP] $msg';
  });
}
