namespace :add_questions do
  desc "to add questions to the model"
  task questions: :environment do
  	question = Question.create(name: "Who is the chief minister of Kerala")
  	option_1 = question.options.create(option_name: "Oomen chandy" )
  	option_2 = question.options.create(option_name: "A K Antony" )
  	option_3 = question.options.create(option_name: "V S Achuthanenthan" )
  	option_4 = question.options.create(option_name: "Kodiyeri Balakrishnan" )
  	question.update_columns(answer_option_id: option_1.id)
  	puts "Question Created"

    question = Question.create(name: "Man behind the Rails Framework?")
    option_1 = question.options.create(option_name: "Dennis Ritchie" )
    option_2 = question.options.create(option_name: "David Henseein" )
    option_3 = question.options.create(option_name: "Steve Jobs" )
    option_4 = question.options.create(option_name: "Jacob JOhn" )
    question.update_columns(answer_option_id: option_2.id)
    puts "Question Created"

    question = Question.create(name: "Capital of India?")
    option_1 = question.options.create(option_name: "Kerala" )
    option_2 = question.options.create(option_name: "Tamil Nadu" )
    option_3 = question.options.create(option_name: "Delhi" )
    option_4 = question.options.create(option_name: "Uttar Pradesh" )
    question.update_columns(answer_option_id: option_3.id)
    puts "Question Created"

    question = Question.create(name: "Which of the following type of class allows only one object of it to be created?")
    option_1 = question.options.create(option_name: "Virtual class" )
    option_2 = question.options.create(option_name: "Abstract class" )
    option_3 = question.options.create(option_name: "Singleton class" )
    option_4 = question.options.create(option_name: "Friend class" )
    question.update_columns(answer_option_id: option_3.id)
    puts "Question Created"

    question = Question.create(name: "Which of the following is not the member of class?")
    option_1 = question.options.create(option_name: "Static function" )
    option_2 = question.options.create(option_name: "Friend function" )
    option_3 = question.options.create(option_name: "Const function" )
    option_4 = question.options.create(option_name: "Virtual function" )
    question.update_columns(answer_option_id: option_2.id)
    puts "Question Created"

    question = Question.create(name: "The percentage increase in the area of a rectangle, if each of its sides is increased by 20% is:")
    option_1 = question.options.create(option_name: "40%" )
    option_2 = question.options.create(option_name: "44%" )
    option_3 = question.options.create(option_name: "100%" )
    option_4 = question.options.create(option_name: "56%" )
    question.update_columns(answer_option_id: option_2.id)
    puts "Question Created"

    question = Question.create(name: "Grand Central Terminal, Park Avenue, New York is the world's")
    option_1 = question.options.create(option_name: "largest railway station" )
    option_2 = question.options.create(option_name: "highest railway station" )
    option_3 = question.options.create(option_name: "longest railway station" )
    option_4 = question.options.create(option_name: "None of the above" )
    question.update_columns(answer_option_id: option_1.id)
    puts "Question Created"

    question = Question.create(name: "Eritrea, which became the 182nd member of the UN in 1993, is in the continent of")
    option_1 = question.options.create(option_name: "Asia" )
    option_2 = question.options.create(option_name: "Africa" )
    option_3 = question.options.create(option_name: "Europe" )
    option_4 = question.options.create(option_name: "Australia" )
    question.update_columns(answer_option_id: option_2.id)
    puts "Question Created"

    question = Question.create(name: "Garampani sanctuary is located at")
    option_1 = question.options.create(option_name: "Assam" )
    option_2 = question.options.create(option_name: "Kerala" )
    option_3 = question.options.create(option_name: "Nagaland" )
    option_4 = question.options.create(option_name: "Punjab" )
    question.update_columns(answer_option_id: option_1.id)
    puts "Question Created"

    question = Question.create(name: "For which of the following disciplines is Nobel Prize awarded?")
    option_1 = question.options.create(option_name: "Physics and Chemistry" )
    option_2 = question.options.create(option_name: "Physiology or Medicine" )
    option_3 = question.options.create(option_name: "Literature, Peace and Economics" )
    option_4 = question.options.create(option_name: "All of the above" )
    question.update_columns(answer_option_id: option_4.id)
    puts "Question Created"

    question = Question.create(name: "Hitler party which came into power in 1933 is known as")
    option_1 = question.options.create(option_name: "Labour Party" )
    option_2 = question.options.create(option_name: "Nazi Party" )
    option_3 = question.options.create(option_name: "Ku-Klux-Klan" )
    option_4 = question.options.create(option_name: "Democratic Party" )
    question.update_columns(answer_option_id: option_2.id)
    puts "Question Created"

    question = Question.create(name: "Fastest shorthand writer was")
    option_1 = question.options.create(option_name: "Dr. G. D. Bist" )
    option_2 = question.options.create(option_name: "J.R.D. Tata" )
    option_3 = question.options.create(option_name: "J.M. Tagore" )
    option_4 = question.options.create(option_name: "Richard Hensy" )
    question.update_columns(answer_option_id: option_1.id)
    puts "Question Created"

    question = Question.create(name: "Epsom (England) is the place associated with")
    option_1 = question.options.create(option_name: "Shooting" )
    option_2 = question.options.create(option_name: "Cricket" )
    option_3 = question.options.create(option_name: "Horse Racing" )
    option_4 = question.options.create(option_name: "Golf" )
    question.update_columns(answer_option_id: option_3.id)
    puts "Question Created"

    question = Question.create(name: "Golf player Vijay Singh belongs to which country?")
    option_1 = question.options.create(option_name: "India" )
    option_2 = question.options.create(option_name: "Fiji" )
    option_3 = question.options.create(option_name: "China" )
    option_4 = question.options.create(option_name: "England" )
    question.update_columns(answer_option_id: option_2.id)
    puts "Question Created"

    question = Question.create(name: "First Afghan War took place in")
    option_1 = question.options.create(option_name: "1876" )
    option_2 = question.options.create(option_name: "1839" )
    option_3 = question.options.create(option_name: "1850" )
    option_4 = question.options.create(option_name: "1700" )
    question.update_columns(answer_option_id: option_2.id)
    puts "Question Created"


  end

end
