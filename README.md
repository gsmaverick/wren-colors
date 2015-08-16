# wren-colors

Print fancy messages to the terminal.

### Usage

This assumes you've included this repository under `/wren-colors` in your project root.

```dart
import "wren-colors/index" for AnsiColors, AnsiPrinter

var a = AnsiPrinter.new(AnsiColors.BLUE, AnsiColors.WHITE_B, AnsiColors.BLINK)
a.print("This text should be blue on a white background and blink.")

var b = AnsiPrinter.new(AnsiColors.BLUE, AnsiColors.WHITE_B)
b.print("This text should be blue on a white background.")

var c = AnsiPrinter.new(AnsiColors.BLUE)
c.print("This text should be blue.")
```
