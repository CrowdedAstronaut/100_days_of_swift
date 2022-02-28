import UIKit

var greeting = "Hello, playground"

//FizzBuzz 1
	
//for i in 1...100 {
//	if i.isMultiple(of: 3) {
//		if i.isMultiple(of: 5) {
//			print("FizzBuzz")
//		} else {
//			print("Fizz")
//		}
//	}else if i.isMultiple(of: 5){
//		print("Buzz")
//	} else {
//		print(i)
//	}
//}


//func areIdentical (string1: String, string2: String) -> Bool {
//	if string1.sorted() == string2.sorted() {
//		return true;
//	} else {
//		return false;
//	}
//}
//
//areIdentical(string1: "abc", string2: "cab")


//func pythagorus(a:Double, b:Double) -> Double{
//	sqrt(a * a + b * b)
//}
//
//let c = pythagorus(a: 3, b: 4)
//print(c)


//Simple Data Summary
//We’ve covered a lot about the basics of data in the previous chapters, so let’s recap:
//
//Swift lets us create constants using let, and variables using var.
//If you don’t intend to change a value, make sure you use let so that Swift can help you avoid mistakes.
//Swift’s strings contain text, from short strings up to whole novels. They work great with emoji and any world language, and have helpful functionality such as count and uppercased().
//You create strings by using double quotes at the start and end, but if you want your string to go over several lines you need to use three double quotes at the start and end.
//Swift calls its whole numbers integers, and they can be positive or negative. They also have helpful functionality, such as isMultiple(of:).
//In Swift decimal numbers are called Double, short for double-length floating-point number. That means they can hold very large numbers if needed, but they also aren’t 100% accurate – you shouldn’t use them when 100% precision is required, such as when dealing with money.
//There are lots of built-in arithmetic operators, such as +, -, *, and /, along with the special compound assignment operators such as += that modify variables directly.
//You can represent a simple true or false state using a Boolean, which can be flipped using the ! operator or by calling toggle().
//String interpolation lets us place constants and variables into our strings in a streamlined, efficient way.


//Complex data types
//We’ve gone beyond simple data types now, and started looking at ways to group them together and even create our own using enums. So, let’s recap:
//
//Arrays let us store lots of values in one place, then read them out using integer indices. Arrays must always be specialized so they contain one specific type, and they have helpful functionality such as count, append(), and contains().
//Dictionaries also let us store lots of values in one place, but let us read them out using keys we specify. They must be specialized to have one specific type for key and another for the value, and have similar functionality to arrays, such as contains() and count.
//Sets are a third way of storing lots of values in one place, but we don’t get to choose the order in which they store those items. Sets are really efficient at finding whether they contain a specific item.
//Enums let us create our own simple types in Swift so that we can specify a range of acceptable values such as a list of actions the user can perform, the types of files we are able to write, or the types of notification to send to the user.
//Swift must always know the type of data inside a constant or variable, and mostly uses type inference to figure that out based on the data we assign. However, it’s also possible to use type annotation to force a particular type.
//Out of arrays, dictionaries, and sets, it’s safe to say that you’ll use arrays by far the most. After that comes dictionaries, and sets come a distant third. That doesn’t mean sets aren’t useful, but you’ll know when you need them!


//Conditionals and Loops
//We’ve covered a lot about conditions and loops in the previous chapters, so let’s recap:
//
//We use if statements to check a condition is true. You can pass in any condition you want, but ultimately it must boil down to a Boolean.
//If you want, you can add an else block, and/or multiple else if blocks to check other conditions. Swift executes these in order.
//You can combine conditions using ||, which means that the whole condition is true if either subcondition is true, or &&, which means the whole condition is true if both subconditions are true.
//If you’re repeating the same kinds of check a lot, you can use a switch statement instead. These must always be exhaustive, which might mean adding a default case.
//If one of your switch cases uses fallthrough, it means Swift will execute the following case afterwards. This is not used commonly.
//The ternary conditional operator lets us check WTF: What, True, False. Although it’s a little hard to read at first, you’ll see this used a lot in SwiftUI.
//for loops let us loop over arrays, sets, dictionaries, and ranges. You can assign items to a loop variable and use it inside the loop, or you can use underscore, _, to ignore the loop variable.
//while loops let us craft custom loops that will continue running until a condition becomes false.
//We can skip some or all loop items using continue or break respectively.
//That’s another huge chunk of new material, but with conditions and loops you now know enough to build some really useful software – give it a try!

//When should you omit a parameter label?

//If we use an underscore for a function parameter’s external label, Swift lets us use no name for that parameter at all. This is very common practice in some parts of Swift development, particularly when building apps that don’t use SwiftUI, but there are many other times when you’ll also want to use this.
//
//The main reason for skipping a parameter name is when your function name is a verb and the first parameter is a noun the verb is acting on. For example:
//
//Greeting a person would be greet(taylor) rather than greet(person: taylor)
//Buying a product would be buy(toothbrush) rather than buy(item: toothbrush)
//Finding a customer would be find(customer) rather than find(user: customer)
//This is particularly important when the parameter label is likely to be the same as the name of whatever you’re passing in:
//
//Singing a song would be sing(song) rather than sing(song: song)
//Enabling an alarm would be enable(alarm) rather than enable(alarm: alarm)
//Reading a book would be read(book) rather than read(book: book)


//Functions let us reuse code easily by carving off chunks of code and giving it a name.
//All functions start with the word func, followed by the function’s name. The function’s body is contained inside opening and closing braces.
//We can add parameters to make our functions more flexible – list them out one by one separated by commas: the name of the parameter, then a colon, then the type of the parameter.
//You can control how those parameter names are used externally, either by using a custom external parameter name or by using an underscore to disable the external name for that parameter.
//If you think there are certain parameter values you’ll use repeatedly, you can make them have a default value so your function takes less code to write and does the smart thing by default.
//Functions can return a value if you want, but if you want to return multiple pieces of data from a function you should use a tuple. These hold several named elements, but it’s limited in a way a dictionary is not – you list each element specifically, along with its type.
//Functions can throw errors: you create an enum defining the errors you want to happen, throw those errors inside the function as needed, then use do, try, and catch to handle them at the call site.


//enum sqrtError: Error {
//	case tooLow, tooHigh, outOfBounds
//	
//}
//func squareRoot(of num: Int) throws -> Int {
//	if num < 1 {
//		throw sqrtError.tooLow
//	}
//	
//	else if num > 10_000 {
//		throw sqrtError.tooHigh
//	}
//	
//	for i in 1...100 {
//		if i * i == num {
//			return i
//		}
//	}
//	
//	throw sqrtError.outOfBounds
//}
//
//
//let number = 6561
//
//
//do {
//	let root = try squareRoot(of: number)
//	print("The square root of \(number) is \(root)")
//} catch sqrtError.tooLow {
//	print("Sorry, \(number) was too low")
//} catch sqrtError.tooHigh{
//	print("Sorry, \(number) was too high")
//} catch sqrtError.outOfBounds{
//	print("Sorry, there were no integer results found for \(number) ")
//} catch {
//	print("Sorry there was a problem")
//}

//
//let sayHello = { (name: String) -> String in
//	"Hi \(name)!"
//}

//let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
//let sortedTeam = team.sorted()
//print(sortedTeam)
//
////Example of closure
//func captainFirstSorted(name1: String, name2: String) -> Bool {
//	if name1 == "Suzanne" {
//		return true
//	} else if name2 == "Suzanne" {
//		return false
//	}
//
//	return name1 < name2
//}
//
//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//	if name1 == "Suzanne" {
//		return true
//	} else if name2 == "Suzanne" {
//		return false
//	}
//
//	return name1 < name2
//})
//
//print(captainFirstTeam)


// Reasons for closures
//One of the most common reasons for closures in Swift is to store functionality – to be able to say “here’s some work I want you to do at some point, but not necessarily now.” Some examples:
//
//Running some code after a delay.
//Running some code after an animation has finished.
//Running some code when a download has finished.
//Running some code when a user has selected an option from your menu.


//Why are Swift’s closure parameters inside the braces?
//Closures take their parameters inside the brace to avoid confusing Swift: if we had written let payment = (user: String, amount: Int) then it would look like we were trying to create a tuple, not a closure, which would be strange.

//Having the parameter list inside the braces shows why the in keyword is so important – without that it’s hard for Swift to know where your closure body actually starts, because there’s no second set of braces.


//Closure Summary
//We’ve covered a lot about closures in the previous chapters, so let’s recap:
//
//You can copy functions in Swift, and they work the same as the original except they lose their external parameter names.
//All functions have types, just like other data types. This includes the parameters they receive along with their return type, which might be Void – also known as “nothing”.
//You can create closures directly by assigning to a constant or variable.
//Closures that accept parameters or return a value must declare this inside their braces, followed by the keyword in.
//Functions are able to accept other functions as parameters. They must declare up front exactly what data those functions must use, and Swift will ensure the rules are followed.
//In this situation, instead of passing a dedicated function you can also pass a closure – you can make one directly. Swift allows both approaches to work.
//When passing a closure as a function parameter, you don’t need to explicitly write out the types inside your closure if Swift can figure it out automatically. The same is true for the return value – if Swift can figure it out, you don’t need to specify it.
//If one or more of a function’s final parameters are functions, you can use trailing closure syntax.
//You can also use shorthand parameter names such as $0 and $1, but I would recommend doing that only under some conditions.
//You can make your own functions that accept functions as parameters, although in practice it’s much more important to know how to use them than how to create them.


//Checkpoint 5
//let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
//
//let result = luckyNumbers.filter {$0.isMultiple(of: 2) == false}.sorted().map {"\($0) is a lucky number"}
//
//for item in result {
//	print(item)
//}


//struct Employee {
//	let name: String
//	var vacationRemaining: Int
//
//	mutating func takeVacation(days: Int) {
//		if vacationRemaining > days {
//			vacationRemaining -= days
//			print("I'm going on vacation!")
//			print("Days remaining: \(vacationRemaining)")
//		} else {
//			print("Oops! There aren't enough days remaining.")
//		}
//	}
//}
//
//
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)


//struct Employee {
//	let name: String
//	var vacationAllocated = 14
//	var vacationTaken = 0
//
//	var vacationRemaining: Int {
//		get {
//			vacationAllocated - vacationTaken
//		}
//
//		set {
//			vacationAllocated = vacationTaken + newValue
//		}
//	}
//}
//
//
//var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
//archer.vacationTaken += 4
//print(archer.vacationRemaining)
//archer.vacationTaken += 4
//print(archer.vacationRemaining)
//archer.vacationRemaining = 10
//print(archer.vacationAllocated)


//struct App {
//	var contacts = [String]() {
//		willSet {
//			print("Current value is: \(contacts)")
//			print("New value will be: \(newValue)")
//		}
//
//		didSet {
//			print("There are now \(contacts.count) contacts.")
//			print("Old value was \(oldValue)")
//		}
//	}
//}
//
//var app = App()
//app.contacts.append("Adrian E")
//app.contacts.append("Allen W")
//app.contacts.append("Ish S")



//Custom initializers are different
//struct Player {
//	let name: String
//	let number: Int
//
//	init(name: String, number: Int) {
//		self.name = name
//		self.number = number
//	}
//}

//There is no func keyword. Yes, this looks like a function in terms of its syntax, but Swift treats initializers specially.
//Even though this creates a new Player instance, initializers never explicitly have a return type – they always return the type of data they belong to.
//I’ve used self to assign parameters to properties to clarify we mean “assign the name parameter to my name property”.
//struct Player {
//	let name: String
//	let number: Int
//
//	init(name: String) {
//		self.name = name
//		number = Int.random(in: 1...99)
//	}
//}
//
//let player = Player(name: "Megan R")
//print(player.number)
//
//
////custom initializer examples:
//struct Student {
//	var name: String
//	var bestFriend: String
//
//	init(name: String, bestFriend: String) {
//		print("Enrolling \(name) in class…")
//		self.name = name
//		self.bestFriend = bestFriend
//	}
//}

//
//struct BankAccount {
//	var funds = 0
//
//	mutating func deposit(amount: Int) {
//		funds += amount
//	}
//
//	mutating func withdraw(amount: Int) -> Bool {
//		if funds > amount {
//			funds -= amount
//			return true
//		} else {
//			return false
//		}
//	}
//}

//To solve this, we can tell Swift that funds should be accessible only inside the struct – by methods that belong to the struct, as well as any computed properties, property observers, and so on.
//
//This takes only one extra word:
//
//private var funds = 0


//struct School {
//	static var studentCount = 0
//
//	static func add(student: String) {
//		print("\(student) joined the school.")
//		studentCount += 1
//	}
//}
//
//
//struct AppData {
//	static let version = "1.3 beta 2"
//	static let saveFilename = "settings.json"
//	static let homeURL = "https://www.hackingwithswift.com"
//}
//
//struct Employee {
//	let username: String
//	let password: String
//
//	static let example = Employee(username: "cfederighi", password: "hairforceone")
//}

//Structs are used almost everywhere in Swift: String, Int, Double, Array and even Bool are all implemented as structs, and now you can recognize that a function such as isMultiple(of:) is really a method belonging to Int.
//
//Let’s recap what else we learned:
//
//You can create your own structs by writing struct, giving it a name, then placing the struct’s code inside braces.
//Structs can have variable and constants (known as properties) and functions (known as methods)
//If a method tries to modify properties of its struct, you must mark it as mutating.
//You can store properties in memory, or create computed properties that calculate a value every time they are accessed.
//We can attach didSet and willSet property observers to properties inside a struct, which is helpful when we need to be sure that some code is always executed when the property changes.
//Initializers are a bit like specialized functions, and Swift generates one for all structs using their property names.
//You can create your own custom initializers if you want, but you must always make sure all properties in your struct have a value by the time the initializer finishes, and before you call any other methods.
//We can use access to mark any properties and methods as being available or unavailable externally, as needed.
//It’s possible to attach a property or methods directly to a struct, so you can use them without creating an instance of the struct.


//struct Car {
//	let model: String
//	let seats: Int
//	let maximumGears: Int
//	private (set) var gear = 1
//	
//	mutating func changeGear(difference: Int) {
//		gear = gear + difference
//		
//		if gear < 1 {
//			gear = 1
//		} else if gear > maximumGears {
//			gear = maximumGears
//		}
//	}
//}
//
//
//var car = Car(model: "BMW X3", seats: 5, maximumGears: 8)
//car.changeGear(difference: 1)
//print(car.gear)

//



//Classes and structs give Swift developers the ability to create custom, complex types with properties and methods, but they have five important differences:
//
//Classes do not come with synthesized memberwise initializers.
//One class can be built upon (“inherit from”) another class, gaining its properties and methods.
//Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
//Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
//Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.


//class Employee {
//	let hours: Int
//
//	init(hours: Int) {
//		self.hours = hours
//	}
//}
//
//class Developer: Employee {
//	func work() {
//		print("I'm writing code for \(hours) hours.")
//	}
//}
//
//class Manager: Employee {
//	func work() {
//		print("I'm going to meetings for \(hours) hours.")
//	}
//}
//
//
//let robert = Developer(hours: 8)
//let joseph = Manager(hours: 10)
//robert.work()
//joseph.work()
//
//let novall = Developer(hours: 8)
//novall.printSummary()
//
//
//override func printSummary() {
//	print("I'm a developer who will sometimes work \(hours) a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
//}


//class Vehicle {
//	let isElectric: Bool
//
//	init(isElectric: Bool) {
//		self.isElectric = isElectric
//	}
//}
//
//class Car: Vehicle {
//	let isConvertible: Bool
//
//	init(isElectric: Bool, isConvertible: Bool) {
//		self.isConvertible = isConvertible
//		super.init(isElectric: isElectric)
//	}
//}
//
//let teslaX = Car(isElectric: true, isConvertible: false)
//


//class User {
//	var username = "Anonymous"
//}
//

//user2.username = "Taylor"




class User {
	var username = "Anonymous"

	func copy() -> User {
		let user = User()
		user.username = username
		return user
	}
}
var user1 = User()
//
var user2 = user1.copy()
user2.username = "Taylor"
print(user1.username)
print(user2.username)
