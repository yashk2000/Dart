void main() {
  var s1 = 'Strings can be in single quotes ';
  var s2 = "as well as in double quotes.";
  var s3 = """Strings can be concatinated using the + operator. These triple quotes are used to declare multi line strings.""";
  var s4 = s1 + s2;
  print(s4);
  var s5 = '''Another way to declare multi line string''';
  print(s5);
  var dart = 'Dart';
  var awesome = 'awesome';
  var s6 = "$dart is $awesome";
  print(s6);
  print("$dart rocks!!!");
}
