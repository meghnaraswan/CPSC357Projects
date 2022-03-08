/*:
 ## Exercise: Emoji

 This page includes four functions that are building blocks for the basic smiley emoji. You can use them—and create others—to reproduce emoji of your own design. Start by experimenting with the built-in functions.
 
 - callout(Exercise): Try changing the arguments to each of the functions below to see how the smiley components work.
 */
//face(xPos: 5, yPos: 5, color: .green)
//leftEye(x: 5, y: 20, color: .red, blinking: false)
//rightEye(x: 5, y: 25, color: .blue, blinking: true)
//smile(x: 5, y: 30, color: .magenta)

//face(xPos: 4, yPos: 12, color: .green)
//leftEye(x: 7, y: 19, color: .red, blinking: false)
//rightEye(x: 12, y: 20, color: .blue, blinking: true)
//smile(x: 8, y: 15, color: .magenta)

/*:
- callout(Exercise): Once you're comfortable with the functions, comment out the lines above and complete the `Smiley` struct below. The properties have been provided for you; your task is to implement the `draw` method. When you're done, test it by creating an instance and drawing it on the display.
 */
struct Smiley {
    var x: Int
    var y: Int
    var faceColor: Color
    var eyeColor: Color
    var smileColor: Color
    var leftBlink: Bool
    var rightBlink: Bool

    func draw() {
        // Your code goes here
        face(xPos: x, yPos: y, color: faceColor)
        leftEye(x: x + 3, y: y + 7, color: smileColor, blinking: leftBlink)
        rightEye(x: x + 8, y: y + 8, color: smileColor, blinking: rightBlink)
        smile(x: x + 4, y: y + 3, color: smileColor)
    }
}

//let mySmiley = Smiley(x: 1, y: 13, faceColor: .yellow, eyeColor: .blue, smileColor: .magenta, leftBlink: false, rightBlink: true)
//mySmiley.draw()

var frameTime = 1.0 / 24.0

for i in 0...25 {
//    display.setPixel(x: i, y: 5, color: .white)
    let mySmiley = Smiley(x: i, y: 13, faceColor: .yellow, eyeColor: .blue, smileColor: .magenta, leftBlink: false, rightBlink: true)
    mySmiley.draw()
    display.wait(time: frameTime)
    display.clear()
}

/*:
 - callout(Challenge): Try building a new `frown` function that draws a frown at a given x and y position in a given color. Then create a `Frownie` struct that draws a new emoji with a frowning face. (To save time, you can copy the `Smiley` struct and replace the call to `smile` with a call to `frown`.)
 */
/*:
 ### Challenge: Keep Going!
 
 What other kinds of emoji can you make by playing with this same basic structure? Feel free to keep playing with faces on this page.

[Previous](@previous)  |  page 11 of 13  |  [Next: Exercise: Pixel Loops](@next)
 */

