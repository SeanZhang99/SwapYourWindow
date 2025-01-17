# SwapYourWindow
An autohotkey script enabling you to swap the position of two windows by simply press combination key and dragging your mouse

## Installation
By simply clone the repo, or directly download the zip file of the whole repo, you will have two files, the `SwapYourWindow.ahk` and `SwapYourWindow.exe`.

If you do not want to install AutoHotKey but want to run the program, simply double-click the `SwapYourWindow.exe` file.
If you want to run it via AutoHotKey, or to further modify its functionality under the LICENSE, you shall open `SwapYourWindow.ahk`.

## Usage
Default keystroke to trigger this program to work is: `Shift+Alt`.

By pressing the specified keystroke, the program detects the current position of your mouse, and the position of the window which the mouse hovers on it.
You can directly drag the window to where you want (we say, you move the `current window` from `current position` to the `target position`)
and the program will place the window which was at `targer position` before you move the window to `current position`.
The effect looks like you directly swapped the positions of the two window.

[!NOTE]
You must place your cursor on the status bar of the `current window` to perform swapping, as we usually think that one do not want to move the window if it does not
place the cursor on the status bar.
You can place your cursor on any place of the status bar, even if it is a place where we usually do not click to drag window.

[!NOTE]
I do not guarantee that the default parameters suit for all windows. Feel free to change the `.ahk` file as you need. PR and ISSUE is welcomed if you found any problem.

