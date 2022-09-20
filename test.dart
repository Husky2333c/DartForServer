void main() {
  var year = DateTime.now().year;
  print('now:'+ (year/100+1).round().toString());
}