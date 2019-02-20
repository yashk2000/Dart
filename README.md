# Dart

## Intro to Dart

When you create a dart file and start writing a program, there is no need to use any access specifiers. Everything is `public` by default. Dart does not support any access specifiers.

The main function is really simple.
In java:

```java
public static void main(String[]args)
```

In Dart:

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
1) Constructors with out bodies are valid in Dart.
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
var bike = new Bicycle(3,6,7)
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

`6 kmph`

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

Uninitailized variables have `null` value stored in them by default. This so as in dart, everything including numbers is an object.

Variables can also be declared as `final` or `const`(constant). If a variable is declared as `final`, it's value cannot be changed throughout the execution of the program. A variable delared as `const`, it is a compile time constant. `const` variables are implicitly `final`. Both of these types have to be initialized while they are being declared.

Difference between final and const:

The value of a non-final, non-const variable can be changed even if it has a constant value.
```dart
var y = const [];//value of y = [a,b,c...] can be updated later on
const z = [];//cannot be updated
```

A program to demonstrate this is [here](https://github.com/yashk2000/Dart/blob/master/variables2.dart).

## Read only Variables, Getters and Setters in dart

You can make a variable read only in Dart by adding an underscore before a variable.
[Here](https://github.com/yashk2000/Dart/blob/master/Bicycle2.dart) is a basic program which will explain getters and demonstrates read only variables in Dart.
