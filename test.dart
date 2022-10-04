// https://dart.cn/guides/language/language-tour#variables
void variables() {
  var name = 'Bob';
  int? lineCount;
  assert(lineCount == null);
  lineCount = 0;
  print(name);
  print(lineCount);

  late String description;
  description = 'Feijoada!';
  print(description);

  final String nickname = 'Bobby';
  print(nickname);

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  var foo = const [];
  const baz = []; // Equivalent to `const []`

  foo = [1, 2, 3]; // Was const []
  print(foo);
  print(baz);
}

void main() {
  var year = DateTime.now().year;
  print('now:' + (year / 100 + 1).round().toString());
}
