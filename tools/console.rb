require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
sandy = Student.new("Sandy")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
crash_2 = spongebob.add_boating_test("Don't Crash 102", 'failed', puff)
crash_remedial = spongebob.add_boating_test("Don't Crash Remedial", 'pending',krabs)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
no_crashing_patrick = patrick.add_boating_test("Don't Crash 101", 'pending', puff)
no_crashing_sandy = sandy.add_boating_test("Don't Crash 101", 'passed', puff)
power_steering_sandy = sandy.add_boating_test("Power Steering 201", "passed", krabs)
power_steering_sandy_2 = sandy.add_boating_test("Power Steering 202", 'passed', puff)

# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

