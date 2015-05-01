namespace :add_questions do
  desc "to add questions to the model"
  task questions: :environment do
  	question = Question.create(name: "Who is the cheif minister of kerala?(2015)")
  	option_1 = question.options.create(option_name: "Oomen chandy" )
  	option_2 = question.options.create(option_name: "A K Antony" )
  	option_3 = question.options.create(option_name: "V S Achuthanenthan" )
  	option_4 = question.options.create(option_name: "Kodiyeri Balakrishnan" )
  	question.update_columns(answer_option_id: option_1.id)
  	puts "Question Created"
  end

end
