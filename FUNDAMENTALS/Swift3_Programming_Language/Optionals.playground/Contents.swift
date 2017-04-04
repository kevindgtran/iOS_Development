import UIKit

//DEFINITION: Optionals allow us to work with variables that may have nil values (nil == no value)

//NOTES: Because SWIFT is a type safe language, every variable must have a type and value. Optional variables are helpful when retrieving data that may or may not have values such as bank account info, user details, JSON, etc.
    //OPTIONAL BINDING == "IF LET"
    //SHADOWING == using the optional name as the temporary variable in the if let optional binding block
    //GUARD STATEMENT == "guard let" + else { return } block

//OPTIONAL DECLARING AND UNWRAPPING USING "OPTIONAL BINDING"
//var username: String? = "mrCool1000"
//if let tempVariable = username {
//    print(tempVariable)
//}

//var accountInfo: Int? = 100
//if let tempVar = accountInfo {
//    print(tempVar)
//}

//OPTIONAL DECLARING AND UNWRAPPING USING "GUARD STATEMENTS"
//var userImage: String? = "face.jpeg"
//func checkForUserImage() {
//    guard let userImage = userImage else { print("no value for user Image"); return }
//    print(userImage)
//}
//checkForUserImage()

//OPTIONAL UNWRAPPING USING FORCED UNWRAPPING (DANGEROUS... NOT GOOD PRACTICE)
//var name: String? = "Mickey"
//print(name!)

//UNWRAP 2 OPTIONALS WITH OPTIONAL BINDING IN ONE LINE
//var firstName: String? = "Mickey", lastName: String? = "Mouse"
//if let firstName = firstName, let lastName = lastName { print("\(firstName) \(lastName)") }

//FUNCTION THAT TAKES 2 OPTIONALS, USER GUARD TO UNWRAP AND RETURN OPTIONAL VALUES
//func returnOptionals(firstOptional: String?, secondOptional: String?) {
//    guard let firstOptional = firstOptional else { print("no value for firstOptional") ; return }
//    guard let secondOptional = secondOptional else { print("no value for secondOptional") ; return }
//    print("\(firstOptional) \(secondOptional)")
//}
//returnOptionals(firstOptional: "hello", secondOptional: "world")
