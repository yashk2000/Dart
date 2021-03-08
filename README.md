# Dart

## Intro to Dart

When you create a dart file and start writing a program, there is no need to use any access specifiers. Everything is `public` by default. Dart does not support any access specifiers.

The main function is really simple.
In java:

```java
public static void main(String[]args)
```

In Dart:https://github.com/theamankumarsingh/appinventor-sources.git

```dart
void main()
```

Or if you need command line arguments:

```dart 
void main(List<String> args)
```

It is pretty clear from these examples that the syntax of Dart is way more simple and compact than in Java.
In Dart, code can be defined inside, as well as outside the classes.

Another difference in Dart and Java is indentation. Dart uses 2-character indentation, instead of 4.

## Constructors in Dart

In Dart, declaration of constructors takes just a line. For example a constructor for a Bicycle class is:

```dart
Bicycle(this.var1, this.var2, this.var3 );
```

Keep in mind:
1) Constructors without bodies are valid in Dart.
2) A semicolon(;) at the end of the constructor is really important.
3) Using `this` in the constructor is a shortcut. The constructor mentioned above is equivalent to:

```dart
Bicycle(int var1, int var2, int var3) {
this.var1 = var1;
this.var2 = var2;
this.var3 = var3;
}
```

In the main function, you can directly assign the values to a variable as well as call the constructor at the same time. Following are two examples which show how to print the data stored in a variable:

### Example 1:

```dart
var bike = new Bicycle(3,10,7)
print(bike);
```

Output:

`Instance of 'Bicycle'`

### Example 2:

Now we will use toString() function to give us the value stored in bike.
In the class, override toString() to get the output.

```dart
@override
String toString() => 'Bicycle: $var2 kmph'
```

Then write the same main method as above.

Output:

`10 kmph`

If you do `$var1` instead of `$var2`, you will get `3 kmph` as output.

If you want to print more than one variable:

```dart
@override
String toString() => 'Bicycle: $var2 kmph $var1 $var3'
```
You can find the entire program which demonstrates these concepts [here](https://github.com/yashk2000/Dart/blob/master/Bicycle.dart)

## Variables in Dart

In dart, variables can be declared simply using the keyword `var`. If you have to declare a variable which is not restricted to a single type, it can be declared as `dynamic`. For example:

```dart
var name = 'cnfb';
var name2 = "doho"; // in dart strings can be declared within single as well as double quotes.
dynamic name3 = 'efr';
String name4 = 'djjf';
int num = 5;
```

A simple program to explain the variables above can be found [here](https://github.com/yashk2000/Dart/blob/master/variables.dart).

Uninitialized variables have `null` value stored in them by default. This so as in dart, everything including numbers is an object.

Variables can also be declared as `final` or `const`(constant). If a variable is declared as `final`, it's value cannot be changed throughout the execution of the program. A variable declared as `const`, it is a compile time constant. `const` variables are implicitly `final`. Both of these types have to be initialized while they are being declared.

Difference between final and const:

The value of a non-final, non-const variable can be changed even if it has a constant value.
```dart
var y = const [];//value of y = [a,b,c...] can be updated later on
const z = [];//cannot be updated
```

A program to demonstrate this is [here](https://github.com/yashk2000/Dart/blob/master/variables2.dart).


### Data types in dart

There are the following data types in dart:
- [numbers](https://github.com/yashk2000/Dart#numbers)
- [strings](https://github.com/yashk2000/Dart#strings)
- [booleans](https://github.com/yashk2000/Dart#boolean)
- [lists/arrays](https://github.com/yashk2000/Dart#lists)
- [maps](https://github.com/yashk2000/Dart#maps)
- [runes](https://github.com/yashk2000/Dart#runes)
- [symbols](https://github.com/yashk2000/Dart#symbols)

#### Numbers
There are two types of numbers in dart, `int` and `double`.
The range of `int` is -2^63 to 2^63 - 1. `double` is used to store floating point decimal numbers of upto 64 bit precision.
Some other are properties are storing numbers as hexadecimal format, or exponents etc.
```dart
var num = 0xABCD45;
var exp = 34e2;
```
Numbers and strings can be inter-converted whenever needed. For this `parse` and `toString()` methods are used.
For converting string to integer:
```dart
var number = int.parse(`34`);
```

For converting string to double:
```dart
var floating = double.parse(`23.4`);
```

For converting numbers to string:
```dart
String one = 1.toString();
String decimal = 45.676.toString();
String fixedPoints = 2.3463476.toStringAsFixed(3);
```
View [this](https://github.com/yashk2000/Dart/blob/master/numbers.dart) program to see how numbers can be used in dart.

Basic operations such as `+,-,*,/` all can be performed on numbers. Bitwise operators can also be used. For more features, the dart [math](https://api.dartlang.org/stable/2.1.1/dart-math/dart-math-library.html) library has several built in functions.

#### Strings

A string is a collection of UTF-16 code units which can be declared either inside single or double quotes.

To use a single quote inside a sttring in ''. you need to do `\'`.

```dart
var s1 = 'I\`m human'`;
```

You can put the value of an expression inside a string by using ${expression}. If the expression is an identifier, you can skip the {}.
```dart
var s1 = 'Dart';
print("$s1 rocks!!");//Dart rocks!!
```
A raw string can be created using `r'`. A raw string is one in which everything is printed as it was entered. Even escape characters are not recognized in it.
```dart
var s = r'In a raw string, not even \n gets special treatment.';//In a raw string, not even \n gets special treatment.
```

[Here](https://github.com/yashk2000/Dart/blob/master/strings1.dart) is program to check out these things.

Using `const` with strings:

```dart
// These work in a const string.
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
```

#### Boolean

To represent boolean values, `bool` is used. A `bool` type can store only `true` or `false`.

```dart
var t = true;
print(t);//true
bool r = false;
print(r);//false
```

#### Lists

Lists are the equivalent of arrays in Dart. Lists can be simply declared by :
```dart
var list = [1, 2, 3];
```

Lists can contain multiple data types. But if a list contains multiple data types, only printing can be done, no operations can be done.
```dart
var f = ["a", 5, 6];
print(f[0]);
var tmp = f[1] + f[2];//error
print(f[2]);//will print 6
```

To find the length of a list, simply do `list.length`. Compile time constatnt lists can be declared by doing:
```dart
var list = const [1, 2, 3];
```
A list can also be declared insdie a list.
```dart
var sublist = [[1, 2, 3], [4, 5], [5, 6, 7, 8]];
```
A program to demonstrate the lists concepts is [here](https://github.com/yashk2000/Dart/blob/master/lists.dart).

#### Maps

A map is a collection of key-value pairs. The key and value can be any type of objects. The key can occur only once, but the value can be repeated multiple number of times.
```dart
var map = {
//key:  value
  1:      'first',
  2:      'second'  
};

var mapdiff = {
  'one':   'first',
  'two':   'second'
};
```

These values and keys in a map can also be created using a map constructor.
```dart
var map = Map();//using new is optional in Dart2
map[1] = ['one'];
```

Values from a map can be accessed by:
```dart
var map = {
  'laugh':  'hahaha'
};
var tmp = map['laugh'];
```

`map.length` gives the number of key value pairs in a map.

Run [this](https://github.com/yashk2000/Dart/blob/master/maps.dart) program to see the properties of maps.

#### Runes

Runes are the UTF-32 code points of a string. To define runes using a 4 digit hexdecimal number , do `\uXXXX`, where XXXX is the 4 digi thexadecimal number. In order to represent runes using less than or more than a 4 dgit hexadecimal number, do `\u{......}`.

The String class has several properties you can use to extract rune information. The `codeUnitAt` and `codeUnit` properties return 16-bit code units. Use the runes property to  get the runes of a string.

Check out [this](https://github.com/yashk2000/Dart/blob/master/runes.dart) program to see runes in action.
The output of the above program will be :
```
👏
[55357, 56399]
[128079]
♥  😅  😎  👻  🖖  👍
```

#### Symbols

Symbols are rarely used objects in Dart which represent an operator or identifier. they’re invaluable for APIs that refer to identifiers by name, because minification changes identifier names but not identifier symbols. Symbols are compile time constamts..

To get the symbol for an identifier, use a symbol literal, which is just # followed by the identifier:
```
#radix
#bar
```


## Read only Variables, Getters and Setters in dart

You can make a variable read only in Dart by adding an underscore before a variable.
[Here](https://github.com/yashk2000/Dart/blob/master/Bicycle2.dart) is a basic program which will explain getters and demonstrates read only variables in Dart.
