# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

meggings = Megging.create ([
	{
		name: 'White Boy Megging', 
		color: 'White', 
		size: 'XS',
		tightness: 'nut huggin',
		price: '$89.99',
		photo_url: 'megging1.png',
	},
	{
		name: 'Pleather Black', 
		color: 'Black', 
		size: 'M',
		tightness: 'nuts huggin',
		price: '$89.99',
		photo_url: 'megging2.png',
	},
	{
		name: 'School Girl', 
		color: 'Black', 
		size: 'S',
		tightness: 'super-skinny',
		price: '$89.99',
		photo_url: 'megging3.png',
	},
	{
		name: 'The Diaper', 
		color: 'Dark Grey', 
		size: 'L',
		tightness: 'skinny',
		price: '$89.99',
		photo_url: 'megging4.png',
	},
	{
		name: 'The Megging', 
		color: 'Black', 
		size: 'M',
		tightness: 'super-skinny',
		price: '$89.99',
		photo_url: 'megging5.png',
	}
	])