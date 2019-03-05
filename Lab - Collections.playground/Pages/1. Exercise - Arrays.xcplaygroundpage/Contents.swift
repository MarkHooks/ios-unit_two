/*:
 ## Exercise - Arrays
 
 Assume you are an event coordinator for a community charity event and are keeping a list of who has registered. Create a variable `registrationList` that will hold strings. It should be empty after initialization.
 */
var registrationList: [String] = []


/*:
 Your friend Sara is the first to register for the event. Add her name to `registrationList` using the `append(_:)` method. Print the contents of the collection.
 */
registrationList.append("Sara")
print(registrationList)
/*:
 Add four additional names into the array using the `+=` operator. All of the names should be added in one step. Print the contents of the collection.
 */
registrationList += ["Brian", "Dan", "ryan", "Flint"]
print(registrationList)
/*:
 Use the `insert(_:at:)` method to add `Charlie` into the array as the second element. Print the contents of the collection.
 */
registrationList.insert("Carlie", at: 1)
print(registrationList)

/*:
 Someone had a conflict and decided to transfer her registration to someone else. Use array subscripting to change the sixth element to `Rebecca`. Print the contents of the collection.
 */
registrationList.remove(at: 4)
registrationList.insert("Rebecca", at: 4)
print(registrationList)
/*:
 Call `removeLast()` on `registrationList`. If done correctly, this should remove `Rebecca` from the collection. Store the result of `removeLast()` into a new constant `deletedItem`, then print `deletedItem`.
 */
let deletedItems = registrationList.removeLast()
print(deletedItems)

//: page 1 of 4  |  [Next: App Exercise - Activity Challenge](@next)