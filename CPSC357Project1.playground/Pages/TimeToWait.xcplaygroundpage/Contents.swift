/*:
 # How much time should I wait?
 
 * pseudo-code:
 

 `func waitingTime(firstHour, firstMinute, secondHour, secondMinute) -> return String{`
 
    if the second minute (secondMinute) is less than the first minute (firstMinute)
 
        then add 60 to secondMinute and subtract firstMinute
        subtract 1 our from finalMin
 
    else
 
        regularly subtract secondMinute and firstMinute
 
    if the second hour (secondHour) is less than the first hour (firstHour)
 
        then add 24 to secondHour and subtract firstHour
    else
 
        regularly subtract secondHour and firstHour
 
}
 
 * function: The function I used was waitingTime to see how many hours the user has to wait given the first hour and minutes and the second hour and minutes.
 * parameters: first hour, first minute, second hour and second minute
 * return type: string indicating how many hours to wait
 * varaibles: I used finalHour to keep track of how many hours the user needs to wait from the first to the second hour and finalMin to keep track of how many minutes the user needs to wait from the first to the second minutes. The last variable I used was message for what message would be outputted.
 * calculation: In order to calculate the minutes, I created 2 if-else statements for the final minutes and the final hour. If both the second hour and minutes were greater than the first hour and minutes, the subtraction would be performed regularly. However, if the the second minute was less than the first, we would need to add 60 minutes to the second minute because since there are 60 minutes in an hour, we would use those minutes, thereby, subtracting one hour from the second hour. Similarly, if the the second hour was less than the first, we would need to add 24 hours to the second hour because  there are 24 hours in one day.
 
*/
func waitingTime(firstHour fH:Int, firstMinute fM:Int, secondHour sH:Int, secondMinute sM:Int) -> String{
    
    print("\(sH):\(sM)-\(fH):\(fM)")
    
    var finalHour:Int = 0
    var finalMin:Int = 0
    var message:String = ""
    
    if(sM < fM){
        finalMin = ((sM + 60) - fM) //add 60 to secondMinute because there are 60 minutes in an hour
        finalHour -= 1 // subtract 1 hour because the 60 minutes are coming from the secondHour
    } else if (sM >= fM) {
        finalMin = (sM - fM) //regularly find the difference between secondMinute and firstMinute
    } else {
        print("minute time not valid")
    }
    
    if(sH < fH){
        finalHour += ((sH + 24) - fH) //add 24 to secondHour because there are 24 hours in a day
    } else if (sH >= fH) {
        finalHour += (sH - fH) //regularly find the difference between secondHour and firstHour
    } else {
        print("hour time not valid")
    }
    
    if(finalHour < 10 && finalMin < 10){
        message = "You should wait 0\(finalHour):0\(finalMin)"
    } else if (finalHour >= 10 && finalMin < 10) {
        message = "You should wait \(finalHour):0\(finalMin)"
    } else if (finalHour < 10 && finalMin >= 10) {
        message = "You should wait 0\(finalHour):\(finalMin)"
    } else if (finalHour >= 10 && finalMin >= 10) {
        message = "You should wait \(finalHour):\(finalMin)"
    } else {
        message = "invalid wait time"
    }
    
    return(message)
}

print(waitingTime(firstHour: 11, firstMinute: 30, secondHour: 13, secondMinute: 15))
print(waitingTime(firstHour: 12, firstMinute: 15, secondHour: 13, secondMinute: 45))
print(waitingTime(firstHour: 22, firstMinute: 25, secondHour: 1, secondMinute: 05))
print(waitingTime(firstHour: 3, firstMinute: 25, secondHour: 3, secondMinute: 30))
