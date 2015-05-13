require_relative 'lib/sauce_platforms/version'

Gem::Specification.new do |s|
  # 1.8.x is not supported
  s.required_ruby_version = '>= 1.9.3'

  s.name          = 'sauce_platforms'
  s.version       = Platforms::VERSION
  s.date          = Platforms::DATE
  s.license       = 'http://www.apache.org/licenses/LICENSE-2.0.txt'
  s.description   = s.summary = 'Sauce platforms'
  s.description   += '.' # avoid identical warning
  s.authors       = s.email = ['code@bootstraponline.com']
  s.homepage      = 'https://github.com/bootstraponline/sauce_platforms'
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec', '>= 3.2.0'
  s.add_development_dependency 'appium_thor', '>= 0.0.7'
  s.add_development_dependency 'pry', '>= 0.10.1'
  s.add_development_dependency 'sauce_whisk', '>= 0.0.18'

  # exclude generate_sauce_platforms.rb via generate keyword
  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/}) || f.include?('generate')
  end
end
