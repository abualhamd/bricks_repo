import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  // Run `flutter packages get` after generation.
  // await Process.run('flutter', ['pub', 'add', "flutter_bloc"], runInShell: true);
  await Process.run('flutter', ['pub', 'get'], runInShell: true);

  progress.complete();
}
