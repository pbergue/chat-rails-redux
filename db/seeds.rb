# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Message.destroy_all
User.destroy_all
Channel.destroy_all

puts 'Creating Channels'
channel1 = Channel.new(name: 'general')
channel1.save!
channel2 = Channel.new(name: 'rennes')
channel2.save!
channel3 = Channel.new(name: 'react')
channel3.save!
puts 'Channels created!'

puts 'Now creating some users'
user1 = User.new(email: "john@smith.fr", nickname: 'john', password: "secret")
user1.save!
user2 = User.new(email: "kelly@slater.fr", nickname: 'kelly', password: "secret")
user2.save!
puts "Users were created !"

puts 'Creating random messages'
mes1 = Message.new(content: "First test from the seeds!", user_id: user1.id, channel_id: channel1.id)
mes1.save!
mes2 = Message.new(content: "Second test from the seeds!", user_id: user2.id, channel_id: channel2.id)
mes2.save!
mes3 = Message.new(content: "Third test from the seeds!", user_id: user2.id, channel_id: channel3.id)
mes3.save!
mes4 = Message.new(content: "Last test from the seeds!", user_id: user2.id, channel_id: channel1.id)
mes4.save!
puts 'Messages created!'
puts "Let's get rolling !!!"
