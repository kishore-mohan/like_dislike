require "rubygems"
require 'acts_as_votable'
require 'jquery-turbolinks'

module LikeDislike
  class Engine < ::Rails::Engine
    isolate_namespace LikeDislike
  end
end
