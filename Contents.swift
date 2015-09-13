//: Playground - noun: a place where people can play

// Janet Weber      9/12/2015
// Critical Thinking Exercise:  Week 4
//
// Assignment: Come up with a program idea that uses what you've 
//   learned about operators creatively!!
//
// I chose to play with some less familiar operators (to me)- namely tuples (assignment
//    of), the range operator, and the ternary conditional operator.  I use my family as
//    data.  Basically I use the operators to load data and iterate through it to
//    output the family basics.  Also use the preincrement operator.  I tried to use
//    the += to append an element to a string array, but compiler balked.  For me - 
//    this IS creative!

import UIKit

// Tuples : use a tuple to declare parents' names then assign those names to
let parents = ("Mark", "Janet")      //   constants 'mom' and 'dad'
let (_, mom) = parents
let (dad, _) = parents
mom                                  // it works!!

// declare the constant 'male' to be 0 and 'female' to be 1 (self explanatory)
let male = 0
let female = 1

// Arrays : load arrays with names and genders
let child = ["Christian","Joseph", "Aaron", "Hannah", "Nathaniel", "Luke"]
let gender = [0,0,0,1,0,0]

var temp : String                  // initialize a temporary string variable
var output:[String] = [String]()   // p. 53 - had to look ahead
var j = 0;                         // initialize 'looping' variable


// for all 6 kids, determine gender and append output array
for i in 0...5 {
    
    // use ternary conditional operator based on gender.  So temp gets
    //     loaded with male string if gender is 0 or female string
    //     if gender is 1.
    temp = (gender[i] == male ? " Male \u{2642}" : "Female \u{2640}")
    
    // add temp as next element in array output : p. 54 - had to look ahead 
    //   Now output array corresponds with child array (and gender array)
    output.append(temp)
}

//  print family info using preincrement operator on variable j.  Print first child
//  in child and output array first, before pre-incrementing j.  It counts the 
//  children starting from 1 (instead of 0). j was initilized to zero earlier.
println("WEBER FAMILY")
println()
println("Parents:")
println ("        Mother: " + mom + "    Father: " + dad)
println()
println("Children: ")
println("         \(child[j]):  \(output[j])")
++j
println("         \(child[j]):  \(output[j])")
++j
println("         \(child[j]):  \(output[j])")
++j
println("         \(child[j]):  \(output[j])")
++j
println("         \(child[j]):  \(output[j])")
++j
println("         \(child[j]):  \(output[j])")
++j


