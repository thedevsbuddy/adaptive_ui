# AdaptiveUI

A simple helper class to help you creating Adaptive UI easily.

***
NOTE: This will work well if you have any sort of design file. like - XD, PSD, Figma, AI, Sketch etc because you can get the design height and width from the file. Because this package depends on the actual design size. 
***

## What it does?
It provides dynamic sizes for the elements / widgets in which it's magic method is used, And it calculates the size according to the design size and the current device size.

If the design size is smaller than the current device size then it will increase the size according to current device and return the size and vice versa.

## For Example
If you have a design which is ```812 height * 375 width``` (iPhone x)
and you are running your app in a device with the screen size of ```1024 height * 768 width``` (an iPad) 
then it will calculate the size according to these two screen sizes.

Suppose you provided ```16``` size for the font which was the actual font size in the design
now when you run the app inside the device of size ```1024 height * 768 width``` then it will apply
```32.768``` which will be calculated by those two screen sizes.


## Features
* Adaptive Font size
* Adaptive Height
* Adaptive Width

## Helper available

All accepts ```dynamic``` as a parameter but you will always provide ```int``` or ```double``` 

### Extensions
* ```.sp```
* ```.h```
* ```.w```

## Methods
* ```sp()```
* ```w()```
* ```h()```


## Effect
<img src="https://www.devsbuddy.com/assets/images/img_ss_with_lib.png" />
<img src="https://www.devsbuddy.com/assets/images/img_ss_without_lib.png" />


## How to use

* Install the dependency

```bash
flutter pub add adaptive_ui
```

Then in your ```constants``` file add two contstants as ```screenWidth``` and ```screenHeight``` and set the value as per design size, Or you can use these value directly in every page you want to make adaptive.*

```* Design size the size of the design which is in XD, PSD or any file, provided by the Designer.``` 

In your UI/Page

For example ```home_page.dart```

```dart
import "package:adaptive_ui/adaptive_ui.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the adaptive UI helper class
    AdaptiveUI().init(
      context: context,
      height: 812, // Design Height
      width: 375, // Design Width
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Text("Adaptive UI is Awesome!"),
          ),
        ),
      ),
    );
  }
}
```

Now to use this 

For fonts/texts
```dart
Text(
    "Some text",
    style: TextStyle(fontSize: 16.sp), // .sp extension method
),
```


You also can use methods intead extension
```dart
Text(
    "Some text",
    style: TextStyle(fontSize: sp(16)), // sp() helper method
),
```

For Height/Width
```dart
Container(
    height: 200.h, // .h extension method
    width: 200.w, // .w extension method
),
```
Same for the height/width you can use methods as well.
```dart
Container(
    height: h(200), // h() helper method
    width: w(200), // w() helper method
),
```

## Thank you for using this package
