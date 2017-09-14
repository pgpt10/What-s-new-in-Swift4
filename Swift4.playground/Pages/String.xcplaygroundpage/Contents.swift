/*
 String
 
 No need to use 'characters' to iterate
 You can use the same APIs available to a collection/sequence
 */

import Foundation

//1. String as Collection
let str1 = "Hello how are you?"
for ch in str1
{
    print(ch)
}
print(str1.count)
print(str1.isEmpty)
print(str1.first ?? "")


//2.Emoji Strings - Swift 3 doesn't determine the number of characters correctly in emojis
let emojiString = "👩‍💻" // Now: 1, Before: 2
print(emojiString.count)


/* 3. Multiline string literals
 1. Three double quotes
 2. If line break in literal, then line break also appears in string value
 3. If you want to use line breaks to make your source code easier to read, but you don’t want the line breaks to be part of the string’s value, write a backslash (\) at the end of those lines
 4. Because multiline string literals use three double quotes instead of just one, you can include a double quote (") inside of a multiline string literal without escaping it. To include the text """ in a multiline string, escape at least one of the quotation marks.
 */

let star = "⭐️"
let introString = """
A long time ago in a galaxy far,
far away....

You could write multi-lined strings
without "escaping" single quotes.

The indentation of the "closing" quotes
below deside where the text line
begins.

You can even dynamically add value\
from properties: \(star) \"""
"""
print(introString)

/*4. Substring
 
 1.when you get a substring from a string, you gen an instance of Substring and not String
 2. unlike strings, you use substrings for only a short amount of time while performing actions on a string. When you’re ready to store the result for a longer time, you convert the substring to an instance of String
 3. Performance optimization: The difference between strings and substrings is that, as a performance optimization, a substring can reuse part of the memory that’s used to store the original string, or part of the memory that’s used to store another substring. This performance optimization means you don’t have to pay the performance cost of copying memory until you modify either the string or substring. As mentioned above, substrings aren’t suitable for long-term storage—because they reuse the storage of the original string, the entire original string must be kept in memory as long as any of its substrings are being used.
 */

let str2 = "Hello, how are you?"
let substr = str2[str2.index(of: ",")!...]
print(type(of: substr))
let str3 = String(substr)
print(type(of: str3))

//5. Converting between Range<String.Index> and NSRange
let str4 = "Payal Gupta"
let range1 = str4.index(of: "a")!...
print(range1)

//Range to NSRange
let nsRange = NSRange(range1, in: str4)
print(nsRange.length)
print(nsRange.location)

//NSRange to Range
let range2 = Range(nsRange, in: str4)

