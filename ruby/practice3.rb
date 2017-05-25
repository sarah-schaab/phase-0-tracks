array_of_answers = []

def calculate(a, operator, b)
    if operator == "+"
      c = a + b
    elsif
      operator == "-"
      c = a - b
    elsif
      operator == "*"
      c = a * b
    elsif
      operator == "/"
      c = a / b
    else
      puts "I did not understand the question"
    end
  end



i = 0
until i =
loop do |x|
  puts "please enter your math question or enter 'done'"
  math_question = gets.chomp.split(' ')
    a = math_question.slice!(0).to_i
    b = math_question.slice!(1).to_i
    operator = math_question[0].to_s
    answer = calculate(a, operator, b)
    p answer
    array_of_answers << answer
 break if math_question = ["d","o","n", "e"]
  end



# until math_question == "done"
#   p array_of_answers
# end
# end

# if math_question != "done"
#     math_question.split(' ')
#     a = math_question.slice!(0).to_i
#     b = math_question.slice!(1).to_i
#     operator = math_question[0].to_s
#     answer = calculate(a, operator, b)
#     p answer
#     array_of_answers << answer
# else
# end
# end
# end


    p array_of_answers


p array_of_answers

# puts "please enter your math question or enter 'done'"
# math_question = gets.chomp.split(' ')
# math_question = gets.chomp
# until math_question == "done"
#   p math_question
# end





#___DRIVER CODE___#
 p calculate(1, "-", 4)


