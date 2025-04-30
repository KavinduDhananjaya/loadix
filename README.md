# Loadix

Loadix is a simple, customizable loading overlay widget for Flutter applications. It provides an easy way to display a loading indicator over your app's UI during asynchronous operations.

## Features

- Easy to use static methods to show and hide the loading overlay
- Customizable loading widget
- Prevents multiple overlays from being shown simultaneously

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  loadix: ^1.0.2
```


---

## Usage

Import the package in your Dart file:
```
import 'package:loadix/loadix.dart';
```


### Setting Default Styles
You can set default styles for your entire app:
```
void main() {
  Loadix.init(
    color: Colors.red,
    loaderType: LoaderTypes.staggeredDotsWave,
    loaderSize: 25
  );
  runApp(const MyApp());
}

```

---
### Show Loading Overlay

Call `Loadix.show()` with the current `BuildContext` to display the loading overlay with default settings:

```
Loadix.show(context);
```
To display with custom settings:
```
Loadix.show(
  context,
  color: Colors.red,
  animationType: LoadingAnimationType.inkDrop,
  size: 50.0,
);

```

---
### Hide Loading Overlay

Call `Loadix.hide()` to remove the loading overlay:

```
Loadix.hide();
```


---

## Example

Here’s a complete example demonstrating how to use **loadix** in a Flutter app:


```
ElevatedButton(
   onPressed: () {
    Loadix.show(context);
    Future.delayed((Duration(seconds: 4)), () {
      Loadix.hide();
     });
    },
    child: Text("Show Loading Overlay"),
);
```

## Available Loader Types

* staggeredDotsWave
* inkDrop
* twistingDots
* threeRotatingDots
* fourRotatingDots
* fallingDot
* prograssiveDots
* discreteCircle
* threeArchedCircle
* bouncingBall
* flickr
* waveDots
* stretchedDots
* halfTriangleDot
* dotsTriangle
* horizontalRotatingDots



---

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

MIT License © Kavindu Dhannjaya

---

Happy coding! 🚀
