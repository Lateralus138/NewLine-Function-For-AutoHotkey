# NewLine Function For AutoHotkey

![AutoHotkey Functions](./images/newline_buttons_A.png)

An AutoHotkey function to create a new line above or below the current line in multiple text editors, IDES, &amp; else...

## Install

Copy the function from the file above or here in the README into your daily running script, project, or function library as you would any other AutoHotkey function &amp; create your hotkeys (or however you're using it, GUI perhaps?) in the same file or called/imported file.

## Usage

This is an AutoHotkey function and can be used/called with any method supplied by the AutoHotkey scripting language.

Some programs may call for AHK to be ran as administrator as per Windows UAC &amp; other security, but this is only if you are running that application as administrator. This is not usually the case for most situations. Those who use Windows &amp; AHK a lot should already be familiar with this.

### Examples

Get the example file [HERE](./NewLine_Example.ahk)

The way you use this function is your choice of course, but here is how I use it.

- Hotkey \<Alt\>+\<Up Arrow\>
  - Creates a new line above the current line
  
```AutoHotkey
!Up::NewLine("up")
```

- Hotkey \<Alt\>+\<Down Arrow\>
  - Creates a new line below the current line
  
```AutoHotkey
!Down::NewLine()
```

## Function Code

```AutoHotkey
; ╓───────────────────────────────────────────────────────────────────╖
; ║ NewLine() - create a new line up or down using any method you     ║
; ║ can send a function in AutoHotkey.                                ║
; ║ Usage:                                                            ║
; ║     !Up::NewLine("up")  ;; <Alt>+<Up Arrow> creates a new line    ║
; ║                         ;; above the current cursor               ║
; ║     !Down::NewLine()    ;; <Alt>+<Down Arrow> creates a new       ║
; ║                         ;; line below the current cursor          ║
; ╙───────────────────────────────────────────────────────────────────╜
NewLine(direction := "down"){
	if direction in down,up
	{
		SendInput	,	%	((direction="down")?"{End}":"{Home}")
						.	"{Enter}"
						.	((direction="up")?"{Up}":"")
	}
}
```

## Test

Tested on Windows 10 64 Bit on these editors

- Notepad++
- Atom
- Sublime
- VSCode
- Dreamweaver
- Brave Browser (Twitter)

## License

>This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

License provided in the [LICENSE](./LICENSE) file
