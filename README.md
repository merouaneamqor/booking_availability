# BookingAvailability

BookingAvailability is a Ruby gem that provides a simple and flexible way to manage booking availabilities in your Rails applications. It provides a module-based system similar to Devise, which can be easily included in your models. This gem is designed to work with MongoDB using the Mongoid ODM.

## Installation

To install BookingAvailability, add this line to your application's Gemfile:

```ruby
gem 'booking_availability'
```

Then, execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install booking_availability
```

## Configuration
BookingAvailability allows you to customize the user model in your application. You can do this by adding an initializer in your Rails application:

```ruby
# config/initializers/booking_availability.rb
BookingAvailability.setup do |config|
  config.user_class = 'User'
end
```

Replace 'User' with the name of your user class. If your user class is namespaced, include the namespace in the string, like 'MyNamespace::User'.

## Usage
First, include the BookingAvailability::Bookable module in the model you want to make bookable (e.g., Room, Doctor):

```ruby
class Room
  include Mongoid::Document
  include BookingAvailability::Bookable
end
```

Next, include the BookingAvailability::Booking module in the model that represents a booking:
```ruby
class Booking
  include Mongoid::Document
  include BookingAvailability::Booking
end
```

## Development
After checking out the repo, run bin/setup to install dependencies. Then, run rake spec to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and the created tag, and push the .gem file to rubygems.org.

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/booking_availability. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.

## License
The gem is available as open source under the terms of the MIT License.

## Code of Conduct
Everyone interacting in the BookingAvailability project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.