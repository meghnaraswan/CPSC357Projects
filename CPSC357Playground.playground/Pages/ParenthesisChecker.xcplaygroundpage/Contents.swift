//@frozen struct Character

func verifyParenthesis(expression parenthesisString:String) -> Bool{
    
    var collectionOfParenthesis = [Character]()
    var returnStatement:Bool
    var removedElement:Character
    
    for char in parenthesisString{
        if(char == "("){
            collectionOfParenthesis.append(char)
        } else if(char == ")"){
            if(collectionOfParenthesis.count == 0){
                returnStatement = false
            }
            removedElement = collectionOfParenthesis[-1]
            collectionOfParenthesis.remove(at:-1)
            if((compareParenthesis(opening:removedElement, closing:char)) == true){
                returnStatement = true
            } else{
                returnStatement = false
            }
        }
    }
    if(collectionOfParenthesis.count == 0){
        returnStatement = true
    } else{
        returnStatement = false
    }
    return returnStatement
}

func compareParenthesis(opening:Character, closing:Character) -> Bool{
    var returnStatement:Bool = false
    if(opening == "(" && closing == ")"){
        returnStatement = true
    }
    return returnStatement
}


verifyParenthesis(expression: "()") // true
verifyParenthesis(expression: "((") // false
verifyParenthesis(expression: "(())") // true
verifyParenthesis(expression: "()()") // true
verifyParenthesis(expression: "(()))") // false
verifyParenthesis(expression: ")(") // false
