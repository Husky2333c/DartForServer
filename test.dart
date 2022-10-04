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

  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.

  var y = 1.1;
  var exponents = 1.42e5;

  num x = 1; // x can have both int and double values
  x += 2.5;
  print(x);
  print(y);
  print(exponents);
  print(set);
  print(map);

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000

  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');

  var ss = '字符串插值';

  assert('Dart 有$ss，使用起来非常方便。' == 'Dart 有字符串插值，使用起来非常方便。');
  assert('使用${ss.substring(3, 5)}表达式也非常方便' == '使用插值表达式也非常方便。');

  var ss1 = '可以拼接'
      '字符串'
      "即便它们不在同一行。";
  assert(ss1 == '可以拼接字符串即便它们不在同一行。');

  var ss2 = '使用加号 + 运算符' + '也可以达到相同的效果。';
  assert(ss2 == '使用加号 + 运算符也可以达到相同的效果。');

  var s5 = '''
  You can create
  multi-line strings like this one.
  ''';

  var s6 = """This is also a
  multi-line string.""";

  var s7 = r'在 raw 字符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。';

  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';

  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // Check for null.
  var unicorn;
  assert(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

void main() {
  var year = DateTime.now().year;
  print('now:' + (year / 100 + 1).round().toString());
}
