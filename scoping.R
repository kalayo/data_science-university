	writeLines("\n\nYou are in the console, playing in the global environment.\n")
	readline("Press enter when ready.")
	writeLines("\n")
	x = readline('Please enter a number to assign to x: ')
	x = as.numeric(x)
	option = 'b'
	while (option != 'x') {
		writeLines('\n')
		option = readline("Enter x to see its value in the global environment: ")
	}
	print(x)
	writeLines('\n')
	readline("Press enter when ready. ")
	color = function() {
		choice = 'n'
		while (choice != 'x') {
			writeLines("\nWe now call the function color.")
			hue = readline('What is your favorite color? ')
			readline("\nInside this function, we assign x <- your favorite color. Press enter.")
			x <- hue
			writeLines('\n')
			choice = readline('Enter x to see its value inside color: ')
		}
		print(x)
		writeLines('\n')
		readline("Press enter when ready.")
	}
	#writeLines('\n')
	color()
	option = 'b'
	while (option != 'x') {
		writeLines('\nWe exit the function color and return to the global environment.')
		option = readline("Enter x to see its value in the global environment: ")
	}
	print(x)
	writeLines('\n')
	readline("Press enter when ready.")
	globalcolor = function() {
		choice = 'n'
		while (choice != 'x') {
			writeLines("\nFrom the global environment, we now call the function animal.")
			hue = readline('What animal is the cutest? ')
			readline("\nThis time, we assign x <<- cutest animal. Press enter.")
			x <<- hue
			writeLines('\n')
			choice = readline('Enter x to see its value inside animal: ')
		}
		print(x)
		writeLines('\n')
		readline("Press enter when ready.")
	}
	globalcolor()
	option = 'b'
	while (option != 'x') {
		writeLines('\nWe exit the function animal and return to the global environment.')
		option = readline("Enter x to see its value in the global environment: ")
	}
	print(x)
	writeLines('\n')
	writeLines('See the difference?')
	inception = function() {
		choice = 'n'
		while (choice != 'x') {
			writeLines("\nFrom the global environment, we now call the function inception.")
			hue = readline('Where do you live? ')
			readline("\nInside inception, we assign x <- home. Press enter.")
			x <- hue
			writeLines('\n')
			choice = readline('Enter x to see its value inside inception: ')
		}
		print(x)
		writeLines('\n')
		readline("Press enter when ready.")
		dream = function () {
			choice = 'n'
		while (choice != 'x') {
			writeLines("\nInside inception, we call the function dream.")
			hue = readline('Your favorite drink? ')
			readline("\nIn dream, a function-within-a-function, we assign x <- drink. Press enter.")
			x <- hue
			writeLines('\n')
			choice = readline('Enter x to see its value inside dream, a function-within-inception: ')
			print(x)
		}
		}
		dream()
		option = 'b'
	while (option != 'x') {
		option = readline("Enter x to see its value inside inception: ") }
		print(x)
	}
#writeLines('\n')
readline('Press enter when ready.')
inception()
option = 'b'
	while (option != 'x') {
		option = readline("Enter x to see its value in the global environment: ")
		} 
		print(x)