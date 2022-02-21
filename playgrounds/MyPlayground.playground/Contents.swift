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
