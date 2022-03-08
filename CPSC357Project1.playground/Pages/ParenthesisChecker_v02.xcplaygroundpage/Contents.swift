/*:
 # Did I have my parenthesis correctly? 
 
 * pseudo-code:
 

    `func verifyParenthesis(expression) -> return Bool{`
 
        for char in expression
            if char == "("
                counter += 1
            else if char == ")"
                 counter -= 1
            if counter < 0
                 statement is false
        if counter == 0
            statement is true
    `}`
 
 * function: The function I used was verifyParenthesis to see if a string has the correctly paired parenthesis.
 * parameters: expression in string format to check the proper use of parenthesis
 * return type: bool indicating if the parenthesis are correctly paired (if yes return true, if no return false)
 * varaibles: I used returnStatement as a boolean value to return if the string had correctly placed parenthesis or not. I also used the integer variable counter to keep track of the open and closed parenthesis.
 * calculation: counter was a way to keep track of open and closed parenthesis by adding 1 to the open parenthesis and subracting 1 to the closed parenthsis. If the counter is 0, this means that there are the same amount of open parenthesis as there are closed. If not, the function will return false. If the counter is ever a negative value, that means that the closed parenthesis was counted before an open parenthesis, which is not correct because an open parenthesis has to be followed by a closed paranthesis, so the function will return false.
 */
func verifyParenthesis(expression parenthesisString:String) -> Bool {
    var counter:Int = 0
    var returnStatement:Bool
        
    for char in parenthesisString {
        if(char == "(") {
            counter += 1 //add 1 for open parenthesis
        } else if(char == ")") {
            counter -= 1 //subtract 1 for closed parenthesis
        }
        if(counter < 0){ //if counter is ever less than 1, break (will return false later); this means closed parenthesis was counted first
            break
        }
    }
    
    if(counter == 0) { //if counter is 0, there were same mount of closed parenthesis as open parenthesis, so there are proper pairs
        returnStatement = true
    } else { //else, uneven pairs
        returnStatement = false
    }
    return returnStatement
}

print(verifyParenthesis(expression: "()")) // true
print(verifyParenthesis(expression: "((")) // false
print(verifyParenthesis(expression: "(())")) // true
print(verifyParenthesis(expression: "()()")) // true
print(verifyParenthesis(expression: "(()))")) // false
print(verifyParenthesis(expression: ")(")) // false
