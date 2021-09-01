# AdaptiveUI

A simple helper class to help you creating Adaptive UI easily.

### Features
* Adaptive Font size
* Adaptive Height
* Adaptive Width

### Helper available

All accepts ```double``` as a parameter 

#### Extensions
* ```.sp```
* ```.h```
* ```.w```

#### Methods
* ```sp()```
* ```w()```
* ```h()```

### How to use
Download this helper class and put anywhere inside ```lib``` folder i will suggest create a new folder named ```helper``` and put ```adaptive_ui``` inside it.

Then in your ```constants``` file add two contstants as ```screenWidth``` and ```screenHeight``` and set the value as per design size.*

```* Design size the size of the design which is in XD, PSD or any file, provided by the Designer``` 

In your UI/Page

For example ```home_page.dart```

```dart
import "helper/adaptive_ui/adaptive_ui.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the adaptive UI helper class
    AdaptiveUI().init(
      context: context,
      height: Config.screenHeight, // Design Height
      width: Config.screenWidth, // Design Width
    );

    return AuthLayout(
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
    style: TextStyle(fontSize: 16.0.sp), // Notice ".sp" it is from the helper
),
```

For Height/Width
```dart
Container(
    height: 200.0.h,
    width: 200.0.w,
),
```


More details...
## COMING SOON