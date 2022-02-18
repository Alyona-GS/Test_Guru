User.create([
  { name: "Asgor", email: "my_email@mail.com" },
  { name: "Asmos", email: "my_email@mail.ru" } ])

Category.create([
  { title: 'Ruby' },
  { title: 'HTML' },
  { title: 'Python' } ])

Test.create([
  { title: 'Control Flow',                        category_id: 1 },
  { title: 'Metaprogramming',           level: 3, category_id: 1 },
  { title: 'Text formatting',                     category_id: 2 },
  { title: 'Dictionaries',              level: 2, category_id: 3 },
  { title: 'Blocs, Procs, and Lambdas', level: 2, category_id: 1 } ])

Question.create([
  { body: 'Is ternary operator applicable in Ruby?',       test_id: 1 },
  { body: 'Could eval perform any string?',                test_id: 2 },
  { body: 'What is tag <b> for?',                          test_id: 3 },
  { body: 'What is the main loop used for dictionaries?',  test_id: 4 },
  { body: 'Do procs have a similar behaviour as lambdas?', test_id: 5 } ])

Answer.create([
  {body: "Yes",       correct: true, question_id: 1 },
  {body: "Yes",       correct: true, question_id: 2 },
  {body: "Bold font", correct: true, question_id: 3 },
  {body: "For...in",  correct: true, question_id: 4 },
  {body: "Yes, but lambda is more strict wuth arguments", correct: true, question_id: 5 },

  {body: "No",      question_id: 1 },
  {body: "No",      question_id: 2 },
  {body: "Cursive", question_id: 3 },
  {body: "While",   question_id: 4 },
  {body: "Procs is an alias of lambda", question_id: 5 },
])

User.first.tests << Test.find(1)
User.first.tests << Test.find(3)
User.last.tests << Test.find(2)