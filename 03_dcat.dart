// 命令行程序 （https://dart.dev/tutorials/server/cmdline）

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';

const lineNumber = 'line-number';

void main(List<String> args) {
  exitCode = 0;
  final parser = ArgParser()..addFlag(lineNumber, negatable: false, abbr: 'n');

  ArgResults argResults = parser.parse(args);

  final paths = argResults.rest; // 剩余的命令行参数

  dcat(paths, showLineNumbers: argResults[lineNumber] as bool);
}

Future<void> dcat(List<String> paths, {bool showLineNumbers = false}) async {
  if (paths.isEmpty) {
    print('type exit to quit.');
    while (true) {
      stdout.write(
          '> '); // 这样就不换行了 (https://stackoverflow.com/questions/14073217/print-without-a-newline-in-dart)
      String? line = stdin.readLineSync();
      print('${line}\n');

      if (line?.toLowerCase() == 'exit') {
        print('bye.');
        break;
      }
    }
  } else {
    for (final path in paths) {
      var lineNumber = 1;
      final lines = utf8.decoder
          .bind(File(path).openRead())
          .transform(const LineSplitter());

      try {
        await for (final line in lines) {
          if (showLineNumbers) {
            stdout.write('${lineNumber++} ');
          }
          stdout.writeln(line);
        }
      } catch (_) {
        await _handleError(path);
      }
    }
  }
}

Future<void> _handleError(String path) async {
  if (await FileSystemEntity.isDirectory(path)) {
    stderr.writeln('Error: $path is a directory.');
  } else {
    exitCode = 2;
  }
}

/*
获取依赖项
在目录中，使用 dart 工具创建 dcat 应用程序。
dart create dcat
切换到创建的目录。
cd dcat
在dcat目录中，使用pub 将args包添加为依赖项。这将添加args到pubspec.yaml文件中找到的依赖项列表中。
dart pub add args
dart run bin/dcat.dart -n pubspec.yaml
*/
/*
或者新建
pubspec.yaml
填入配置信息

  name: "DartForServer"

  environment:
    sdk: '>=2.12.0 <3.0.0'
  dependencies: 
    args: ^2.3.0
    shelf: ^1.3.0
    shelf_router: ^1.1.2
    shelf_static: ^1.1.0

dart pub get
*/