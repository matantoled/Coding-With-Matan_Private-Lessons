# Lesson 3: Basic User Input and Simple Operations

# This lesson introduces user input and basic operations like addition.

# Code Segment for the Lesson:

# Example 1: Getting user input
name = input("What is your name? ")
print("Hello, " + name + "!")

# Example 2: Simple calculator
num1 = input("Enter the first number: ")
num2 = input("Enter the second number: ")
sum = int(num1) + int(num2)
print("The sum is:", sum)

# Example 3: Combining input with operations
age = int(input("How old are you? "))
print("In five years, you will be", age + 5)

# Questions Section:
# 1. What happens when you run the code in Example 1? What input does it require?
# 2. Why do we use 'int()' in Example 2?
# 3. What will be the output if the user enters 15 as their age in Example 3?

# Answers Section:
# 1. When you run this code, it prompts the user to enter their name and then greets them with a message like "Hello, [name]!".
# 2. We use 'int()' to convert the input, which is a string by default, into an integer so that we can perform arithmetic operations.
# 3. If the user enters 15, the output will be:
#    In five years, you will be 20.

