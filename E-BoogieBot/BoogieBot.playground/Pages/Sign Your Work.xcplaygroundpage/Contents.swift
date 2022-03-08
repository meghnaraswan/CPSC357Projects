/*:
## Sign Your Work
 
 BoogieBot also has an API for personalizing the moves you’ve created.
 
 Give your bot a title:
 
 `setBotTitle("My Awesome Dance")`
 
 And a subtitle. This is your chance to add your name:
 
 `setBotSubtitle("By The Boogiemaster")`
 */
startBot()
setBotTitle("Let the Music Play!")
setBotSubtitle("I just wanna dance the night away")

func doTheDiscoLeft() {
    fabulize()
    leftArmUp()
    shakeItRight()
    leftArmDown()
}

func doTheDiscoRight() {
    fabulize()
    rightArmUp()
    shakeItLeft()
    rightArmDown()
}

func jumpLeft() {
    fabulize()
    leftLegUp()
    jumpUp()
    jumpDown()
    leftLegDown()
    shakeItCenter()
}

func jumpRight() {
    fabulize()
    rightLegUp()
    jumpUp()
    jumpDown()
    rightLegDown()
    shakeItCenter()
}

doTheDiscoLeft()
jumpRight()
doTheDiscoRight()
jumpLeft()

doTheDiscoLeft()
jumpRight()
doTheDiscoRight()
jumpLeft()

doTheDiscoLeft()
jumpRight()
doTheDiscoRight()
jumpLeft()

doTheDiscoLeft()
jumpRight()
doTheDiscoRight()
jumpLeft()
/*:
 - callout(Exercise): Set your own title and subtitle for your BoogieBot dance.

Next, learn how to share the dances you make with your friends.

[Previous](@previous)  |  page 6 of 13  |  [Next: Share the Boogie](@next)
 */
