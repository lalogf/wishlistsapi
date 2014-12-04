# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wishlist.create([
	{name: "Multidevice charging station", url:"http://www.amazon.com/dp/B009CFMO0S/ref=wl_it_dp_o_pC_nS_ttl?_encoding=UTF8&colid=1T25ILCXPUL6I&coliid=I22DLSI5M7UOTB&psc=1", price: 35, brand:"Useful"},
	{name: "iMac Retina Display", url:"http://store.apple.com/us/buy-mac/imac-retina", price: 2500, brand:"Apple"},
	{name: "Soundlink speaker", price: 249, url: "http://www.bose.com/controller?url=/shop_online/digital_music_systems/bluetooth_speakers/soundlink_wireless_speaker/index.jsp", brand: "Bose"}
	])

User.create([
	{username: "user1", password: "password"},
	{username: "user2", password: "password"},
	])