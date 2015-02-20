class AnsiColors {
  // Foreground color for ANSI black.
  static BLACK { "\u001b[30m" }

  // Foreground color for ANSI red.
  static RED { "\u001b[31m" }

  // Foreground color for ANSI green.
  static GREEN { "\u001b[32m" }

  // Foreground color for ANSI yellow.
  static YELLOW { "\u001b[33m" }

  // Foreground color for ANSI blue.
  static BLUE { "\u001b[34m" }

  // Foreground color for ANSI magenta.
  static MAGENTA { "\u001b[35m" }

  // Foreground color for ANSI cyan.
  static CYAN { "\u001b[36m" }

  // Foreground color for ANSI white.
  static WHITE { "\u001b[37m" }

  // Background color for ANSI black.
  static BLACK_B { "\u001b[40m" }

  // Background color for ANSI red.
  static RED_B { "\u001b[41m" }

  // Background color for ANSI green.
  static GREEN_B { "\u001b[42m" }

  // Background color for ANSI yellow.
  static YELLOW_B { "\u001b[43m" }

  // Background color for ANSI blue.
  static BLUE_B { "\u001b[44m" }

  // Background color for ANSI magenta.
  static MAGENTA_B { "\u001b[45m" }

  // Background color for ANSI cyan.
  static CYAN_B { "\u001b[46m" }

  // Background color for ANSI white.
  static WHITE_B { "\u001b[47m" }

  // Reset ANSI styles.
  static RESET { "\u001b[0m" }

  // ANSI bold.
  static BOLD { "\u001b[1m" }

  // ANSI underlined.
  static UNDERLINED { "\u001b[4m" }

  // ANSI blink.
  static BLINK { "\u001b[5m" }

  // ANSI reversed.
  static REVERSED { "\u001b[7m" }

  // ANSI invisible.
  static INVISIBLE { "\u001b[8m" }
}

class AnsiPrinter {
  new (foreground) {
    _modifiers = [foreground, null, null]
  }

  new (foreground, background) {
    _modifiers = [foreground, background, null]
  }

  new (foreground, background, style) {
    _modifiers = [foreground, background, style]
  }

  print(a1) {
    printList_([a1])
  }

  print(a1, a2) {
    printList_([a1, a2])
  }

  print(a1, a2, a3) {
    printList_([a1, a2, a3])
  }

  print(a1, a2, a3, a4) {
    printList_([a1, a2, a3, a4])
  }

  print(a1, a2, a3, a4, a5) {
    printList_([a1, a2, a3, a4, a5])
  }

  print(a1, a2, a3, a4, a5, a6) {
    printList_([a1, a2, a3, a4, a5, a6])
  }

  print(a1, a2, a3, a4, a5, a6, a7) {
    printList_([a1, a2, a3, a4, a5, a6, a7])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8, a9) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8, a9])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8, a9, a10])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15])
  }

  print(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16) {
    printList_([a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16])
  }

  printList_(objects) {
    var setModifiers = _modifiers.where {|mod|
      return mod
    }

    var modifierCodes = setModifiers.map {|mod|
      return mod[2..(mod.count - 2)]
    }

    // Set the styling for the forthcoming terminal output.
    IO.writeString_("\u001b[" + modifierCodes.join(";") + "m")

    IO.printList_(objects)

    // Reset terminal styling.
    IO.writeString_(AnsiColors.RESET)
  }
}
