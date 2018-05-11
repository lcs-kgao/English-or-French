//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here

var numberOfLine = 0

while true {
    print("How many lines?")
    
    //Test #1: Get input and make sure it is not nil
    guard let givenInput = readLine() else {
        //Prompt again when input is nil
        continue
    }
    //Test #2: Make sure is the integer
    guard let givenInteger = Int(givenInput) else {
        
        continue
    }
    //Test for range
    if givenInteger < 0 || givenInteger > 10000 {
        
        continue
    }
    numberOfLine = givenInteger
    break
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
let expectedLines = numberOfLine
print("Please enter the \(expectedLines) of text:")
var countT = 0 // make these outside the loop so they are global and usable after the loop
var countS = 0 // make these outside the loop so they are global and usable after the loop
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Now we have the line, we can print it out, analyze it as needed, etcetera
    
    for letter in givenLine {
        switch letter {
        case "s", "S":
            countS += 1
        case "t", "T":
            countT += 1
        default:
            break
            
            
        }
    }
    
}



// OUTPUT
// Report results to the user here

if countT > countS {
    print("That looks like English")
}
if countT == countS {
    print("That looks like French")
}
if countT < countS {
    print("That looks like French")
}


