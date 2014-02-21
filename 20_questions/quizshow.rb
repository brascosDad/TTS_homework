qna = [
	['is the sky blue?', 'y'],
	['do shoes have wings?', 'n'],
	['did the south lose the war?', 'y'],
	['is the capital of GA Atlanta?', 'y'],
	['does a pizza need pineapple?', 'n'],
	['do all cars need gas?', 'n'],
	['do gloves keep your hands warm?', 'y'],
	['does programming make you sexy?', 'y'],
	['has time passed since your last heartbeat?', 'y'],
	['have you figured out the meaning of life?', 'n'],
	['do you have five fingers?', 'y'],
	['does robby possess mad skillz?', 'y'],
	['is ernest trying to get an A?', 'y'],
	['do unicorns exist?', 'y'],
	['are you glad this is over?', 'y']
	]
right_answers = 0
puts 'please answer the following questions with a \'y\' or a \'n\''
qna.each do |questions|
puts questions[0]
ans = gets.chomp
if ans == questions[1]
	right_answers = right_answers + 1
end
end
puts 'you had ' + right_answers.to_s + ' correct answers. Congrats!'