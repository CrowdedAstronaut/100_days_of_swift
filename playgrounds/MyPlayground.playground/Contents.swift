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
