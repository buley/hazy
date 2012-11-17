$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'motion-testflight'
require 'bundler'

bundler.require

Motion::Project::App.setup do |app|
	app.identifier = 'co.hazy'
  app.name = 'Hazy'
	app.icons = [ 'Icon.png', 'Icon@2x.png', 'Icon@3x.png' ]
	app.testflight.sdk = 'vendor/TestFlight'
	app.testflight.api_token = '78b99ee174ff5c6e8cf5bc0232863548_NzM4MTY4MjAxMi0xMS0xNSAyMzozNjoxMC42NzU1OTY'
	app.testflight.team_token = '76db9147efe9ab43e4e5461f9a26c75b_MTU1OTQyMjAxMi0xMS0xNiAwMDowNToyOS45NjE3NDE'
end
