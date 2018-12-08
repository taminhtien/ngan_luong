lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ngan_luong/version'

Gem::Specification.new do |s|
  s.name        = 'ngan_luong'
  s.version     = NganLuong::VERSION
  s.summary     = 'Ngan Luong Ruby Client'
  s.authors     = ['Tien Ta']
  s.email       = ['taminhtien1993@gmail.com']
  s.files       = Dir['lib/**/*', 'LICENSE.txt', 'README.md']
  s.homepage    = 'https://github.com/taminhtien/ngan_luong'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.2'
end
