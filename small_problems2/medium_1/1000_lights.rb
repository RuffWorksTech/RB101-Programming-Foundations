=begin
----------------------------PROMPT----------------------------------
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

-----------------------------INPUT----------------------------------
Single integer

----------------------------OUTPUT----------------------------------
Array indicating which lights are left on after all passes

-----------------------------RULES----------------------------------
Explicit:
  - With each round, lights are toggled that are multiples of 1, 2, 3, 4, and so on.

Implicit:

-------------------------DATA STRUCTURES----------------------------
Integer -> Array

----------------------------ALGORITHM-------------------------------

=end

def toggle_switches(lights)
  lights.size.times do |n|
    lights.map!.with_index do |light, idx|
      if (idx + 1) % (n + 1) == 0
        light = case light
        when 0 then 1
        when 1 then 0
        end
      end
      light
    end
  end
  lights
end

def thousand_lights(num)
  lights = toggle_switches(Array.new(num, 0))
  lights.each_with_index.with_object([]) do |(light, idx), arr|
    arr << idx + 1 if light == 1
  end
end

p thousand_lights(3)
p thousand_lights(5)
p thousand_lights(10)
p thousand_lights(100)