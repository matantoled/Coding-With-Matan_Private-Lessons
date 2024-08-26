# Lesson 5 - Introduction to Loops

# This lesson introduces loops, which allow you to repeat actions in code.

# Code Segment for the Lesson:

# Example 1: Simple for loop
for i in range(5):
    print("This is loop iteration", i)

# Example 2: Looping through a list
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print("I like", fruit)

# Example 3: While loop with a condition
count = 0
while count < 3:
    print("Counting:", count)
    count += 1

# Questions Section:
# 1. How many times will the loop run in Example 1, and what will be the final value of 'i'?
# 2. What will be the output of Example 2?
# 3. What will be the output of Example 3, and why does it stop after three iterations?

# Answers Section:
# 1. The loop will run 5 times, and the final value of 'i' will be 4.
# 2. The output will be:
#    I like apple
#    I like banana
#    I like cherry
# 3. The output will be:
#    Counting: 0
#    Counting: 1
#    Counting: 2
#    The loop stops after three iterations because the condition 'count < 3' is no longer true when 'count' reaches 3.
