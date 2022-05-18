# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

# We create a method that calculates the reading time of some text

reading_time = calculate_reading_time(text)

# * text is a string containing words
# * reading_time is the amount of time it will take to read the text (and integer representing minutes)

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

#1
calculate_reading_time("")
# => 0

#2
calculate_reading_time("one")
# => 1

#3
calculate_reading_time(TWO_HUNDRED)
# => 1

#4
calculate_reading_time(THREE_HUNDRED)
# => 2

#5
calculate_reading_time(FOUR_HUNDRED)
# => 2

#6
calculate_reading_time(FIVE_THOUSAND)
# => 25

```
_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

