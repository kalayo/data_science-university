# A short and simple interactive script to help demonstrate scoping in R.
# Amadeo B. Biter

# Function definitions follow.
	
	color = function() {			# Color demonstrates use of <- to assign local values.
		
		hue = readline('What is your favorite color? ')		# Read user input.
		readline("\nInside this function, we assign x <- your favorite color. Press enter.")
		writeLines('\n')
		x <- hue					# Set value of x inside color.
		choice = 'n'
		while (choice != 'x') {								# Loop simply forces user to enter x. :)
			choice = readline('Enter x to see its value inside color: ')
		}
		print(x)
		writeLines('\n')
		readline("Press enter when ready.")
	}
	
	animal = function() {	# Animal demonstrates use of <<- to override values.
		
		cutest = readline('What animal is the cutest? ')
		readline("\nThis time, we assign x <<- cutest animal to override the global x. Press enter.")
		writeLines('\n')
		x <<- cutest			# Set value of x inside animal, and override x in global.
		choice = 'n'
		while (choice != 'x') {
			choice = readline('Enter x to see its value inside animal: ')
		}
		print(x)
		writeLines('\n')
		readline("Press enter when ready.")
	}
	
	inception = function() {			# Inception demonstrates assignment in functions-within-functions.
		
		dream = function () {		# Dream is a function inside inception.
		drink = readline('Your favorite drink? ')
		readline("\nIn dream, a function-within-a-function, we assign x <- drink. Press enter.")
		writeLines('\n')
		x <- drink					# Set value of x inside dream.
		choice = 'n'
		while (choice != 'x') {
			choice = readline('Enter x to see its value inside dream, a function-within-inception: ')
			}
			print(x)
		}
		
		home = readline('Where do you live? ')
		readline("\nInside inception, we assign x <- home. Press enter.")
		writeLines('\n')
		x <- home					# Set value of x inside inception.
		choice = 'n'
		while (choice != 'x') {
			choice = readline('Enter x to see its value inside inception: ')
		}
		print(x)
		writeLines('\n')
		readline("Press enter when ready.")
		
		writeLines("\nInside inception, we call the function dream.")
		dream()				# Call dream, the function-within-a-function.
		
		option = 'b'
		while (option != 'x') {
		option = readline("Enter x to see its value inside inception: ") }
		print(x)
	}


# Actual script follows.

	writeLines("\n\nYou are in the console, playing in the global environment.\n")
	readline("Press enter when ready.")
	writeLines("\n")
	x = readline('Please enter a number to assign to x: ')
	x = as.numeric(x)
	writeLines('\n')
	option = 'b'
	while (option != 'x') {
		option = readline("Enter x to see its value in the global environment: ")
	}
	print(x)
	writeLines('\n')
	readline("Press enter when ready. ")
	
	writeLines("\nWe now call the function color.")
	color()
	
	option = 'b'
	while (option != 'x') {
		writeLines('\nWe exit the function color and return to the global environment.')
		option = readline("Enter x to see its value in the global environment: ")
	}
	print(x)
	writeLines('\n')
	readline("Press enter when ready.")
	
	writeLines("\nFrom the global environment, we now call the function animal.")
	animal()
	
	option = 'b'
	while (option != 'x') {
		writeLines('\nWe exit the function animal and return to the global environment.')
		option = readline("Enter x to see its value in the global environment: ")
	}
	print(x)
	writeLines('\n')
	writeLines('See the difference?')
	readline('Press enter when ready.')

	writeLines("\nFrom the global environment, we now call the function inception.")
	inception()

	option = 'b'
	while (option != 'x') {
		option = readline("Enter x to see its value in the global environment: ")
		} 
		print(x)