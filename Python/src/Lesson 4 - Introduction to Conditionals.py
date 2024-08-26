# Lesson 4 - Introduction to Conditionals

# This lesson introduces conditional statements to make decisions in code.

# Code Segment for the Lesson:

# Example 1: Simple if-else statement
age = int(input("Enter your age: "))
if age >= 18:
    print("You are an adult.")
else:
    print("You are a minor.")

# Example 2: Checking equality
password = input("Enter the password: ")
if password == "python123":
    print("Access granted")
else:
    print("Access denied")

# Example 3: Using elif for multiple conditions
grade = int(input("Enter your grade: "))
if grade >= 90:
    print("You got an A!")
elif grade >= 80:
    print("You got a B!")
else:
    print("You need to study more.")

# Questions Section:
# 1. What message will be displayed if the user enters 20 as their age in Example 1?
# 2. What happens if the user enters "Python123" with a capital 'P' in Example 2?
# 3. What grade will be printed if the user inputs 85 in Example 3?

# Answers Section:
# 1. If the user enters 20, the message "You are an adult." will be displayed.
# 2. If the user enters "Python123" (with a capital 'P'), "Access denied" will be displayed because the comparison is case-sensitive.
# 3. If the user inputs 85, the output will be "You got a B!"

