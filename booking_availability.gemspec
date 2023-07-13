# frozen_string_literal: true

require_relative 'lib/booking_availability/version'

Gem::Specification.new do |spec|
  spec.name = 'booking_availability'
  spec.version = BookingAvailability::VERSION
  spec.authors = ['AMQOR Merouane']
  spec.email = ['marouane.amqor6@gmail.com']

  spec.summary = 'A gem for managing booking availabilities'
  spec.description = 'A gem for managing booking availabilities in various domains like clinics, hotels etc. It provides a module-based system similar to Devise that can be easily included in models.'
  spec.homepage = 'https://github.com/your-github-username/booking_availability' # Replace <your-github-username> with your GitHub username
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org' # Assuming you're publishing to RubyGems

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/your-github-username/booking_availability' # Replace <your-github-username> with your GitHub username
  spec.metadata['changelog_uri'] = 'https://github.com/your-github-username/booking_availability/CHANGELOG.md' # Replace <your-github-username> with your GitHub username

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Dependencies
  spec.add_dependency 'devise'
  spec.add_dependency 'mongoid'
  spec.add_dependency 'rails'
end
