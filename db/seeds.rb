# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dt = Teacher.create(email: 'dt@ga.co', password:'pudding', username: 'dt')
kasun = Teacher.create(email: 'km@ga.co', password:'pudding', username: 'km')
gitsession = Presentation.create(description: 'An insightful session about how to Git', metric: 'How would you rate your understanding of the current topic?', date: '20180214', start_time:'14:00', end_time: '16:00' )


vote = Vote.create(presentation_id: gitsession.id)
