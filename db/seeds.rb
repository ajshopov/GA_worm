# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dt = Teacher.create(email: 'dt@ga.co', password:'pudding', username: 'dt')
kasun = Teacher.create(email: 'km@ga.co', password:'pudding', username: 'km')
gitsession = Presentation.create(description: 'An insightful session about how to Git', metric: 'How would you rate your understanding of the current topic?', date: Time.new(2018,2,6), start_time:Time.new(2018,2,6,14,0,0), end_time: Time.new(2018,2,6,16,0,0) )
railssession = Presentation.create(description: 'A great session about how to Rails', metric: 'How confused are you?', date: Time.new(2018,2,7), start_time:Time.new(2018,2,7,14,0,0), end_time: Time.new(2018,2,7,16,0,0) )


a = Vote.create(vote_value: 80, ip_region: 'VIC', presentation_id: gitsession.id)
b = Vote.create(vote_value: 70, ip_region: 'VIC', presentation_id: gitsession.id)
c = Vote.create(vote_value: 60, ip_region: 'VIC', presentation_id: gitsession.id)
d = Vote.create(vote_value: 70, ip_region: 'VIC', presentation_id: gitsession.id)
e = Vote.create(vote_value: 60, ip_region: 'VIC', presentation_id: gitsession.id)
f = Vote.create(vote_value: 40, ip_region: 'VIC', presentation_id: gitsession.id)
g = Vote.create(vote_value: 10, ip_region: 'VIC', presentation_id: gitsession.id)
h = Vote.create(vote_value: 50, ip_region: 'VIC', presentation_id: gitsession.id)
i = Vote.create(vote_value: 60, ip_region: 'VIC', presentation_id: gitsession.id)
j = Vote.create(vote_value: 70, ip_region: 'VIC', presentation_id: gitsession.id)
k = Vote.create(vote_value: 80, ip_region: 'VIC', presentation_id: gitsession.id)
l = Vote.create(vote_value: 90, ip_region: 'VIC', presentation_id: gitsession.id)
