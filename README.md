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
  loadix: ^1.0.0
```


---

## Usage

Import the package in your Dart file:
```
import 'package:loadix/loadix.dart';
```

---


### Show Loading Overlay

Call `Loadix.show` with the current `BuildContext` to display the loading overlay:



### Hide Loading Overlay

Call `Loadix.hide()` to remove the loading overlay:




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



---

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

MIT License © [Kavindu Dhannjaya]

---

Happy coding! 🚀
