# DartForServer
# 安装dart
# $ brew tap dart-lang/dart && brew install dart
# 运行
# dart run ./myfile.dart

# dart 常见类型转换

# int->String
# int age = 5;
# String ageString = age.toString();

# String->int
# String  str = '100';
# int strInt = int.parse(str);

# String->double
# String str = '3.14';
# double strDouble = double.parse(str);

# double->String
# double  pi =3.1415926;
# String piStr = pi.toStringAsFixed(3); //保留小数点后3位

# int->double
# int age = 3;
# double ageDouble = age.toDouble();

# double->int
# double _dou = 20.34;
# int i = _dou.round();

# String->Map
# String str = '{"left":259.32,"top":196.92,"width":290,"height":263}';
# Map<String,dynamic> strMap = jsonDecode(str);
# print(strMap["left"]);//259.32

# String->List
# String str = '[20,30,40,50]';
# List<int> strList = <int>[];
# for (var data in JsonDecoder().convert(str)) {
#      strList.add(data);
# };
# strList.forEach((element) {
#     print(element);
# });
# //20
# //30
# //40
# //50