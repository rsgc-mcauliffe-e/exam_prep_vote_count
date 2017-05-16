import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var numberOfVotes = Int()
var votes = String()
var output = String()

// Loop until valid input is received
while numberOfVotes == 0 {
    
    // Show the prompt
    print("How many votes? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
		if let isIntInput = Int(notNilInput) {
			if isIntInput < 16 && isIntInput > 1 {
				numberOfVotes = isIntInput		//checks if the input is a number with the right range
			}
		}
    }
}

while votes == "" {
	var input : String?
	input = readLine()
	if let notNilInput = input {
		votes = notNilInput
	}
}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

if (votes.characters.count != numberOfVotes) {
	output = "Error"
} else {
//	votes = votes.localizedCapitalized
	var numberOfAVotes = Int()
	var numberOfBVotes = Int()
	for ii in votes.characters {
		if (ii != "A" && ii != "B") {
			output = "Error"
			break
		}
		if (ii == "A") {
			numberOfAVotes += 1
		}
		if (ii == "B") {
			numberOfBVotes += 1
		}
	}
	if (output != "Error"){
		if numberOfAVotes == numberOfBVotes {
			output = "Tie"
		} else if (numberOfAVotes > numberOfBVotes){
			output = "A"
		} else {
			output = "B"
		}
	}
}


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
print(output)

