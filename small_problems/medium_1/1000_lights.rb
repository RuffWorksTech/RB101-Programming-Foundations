=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.
=end

Input:
- One positive integer

Output
- An array displaying which lights are on

Rules:
- Round 1: Every switch is toggled
- Round 2: Lights 2, 4, 6, ... (evens) are toggled
- Round 3: Lights 3, 6, 9, ... (multiples of 3) are toggled
- Repeat until n repetitions have been completed

[1 1 1 1 1]
[1 0 1 0 1]
[1 0 0 0 1]
[1 0 0 1 1]
[1 0 0 1 0]