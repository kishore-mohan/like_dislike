# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'like_dislike/version'

Gem::Specification.new do |spec|
  spec.name          = "like_dislike"
  spec.version       = LikeDislike::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["kishore-mohan"]
  spec.email         = ["kishorevlrtn@gmail.com"]
  spec.summary       = "Like Dislike by user and Vote and Unvote by user "
  spec.description   = "Like Dislike/Unlike by user by any object resource, dependency of act_as_votable"
  spec.homepage      = "https://github.com/kishore-mohan/like_dislike"
  spec.licenses       = ["MIT"]

  spec.files         = `git ls-files`.split("\n")
  spec.files         = Dir.glob("{bin,lib,app,config}/**/*")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("acts_as_votable")
  spec.add_dependency("jquery-turbolinks")
end
