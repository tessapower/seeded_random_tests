require 'greeter'
require 'ffaker'

# Running these tests from the command line using `bundle exec rspec ./spec/greeter_spec.rb --seed 58408`
# creates reproducible test results with random data thanks to FFaker

describe 'Greeter' do
  describe '#say_hi' do
    it 'greets a person by name' do
      (1..5).each {
        Greeter.new.say_hi(FFaker::Name.unique.name)
      }
    end
  end

  describe '#say_bye' do
    it 'farewells a person by name' do
      (1..5).each {
        Greeter.new.say_bye(FFaker::Name.unique.name)
      }
    end
  end
end
