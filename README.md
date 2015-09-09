# LikeDislike (Like or UnLike)

Like Dislike is a Ruby gem it provides facebook or youtube kind of like and dislike functionality with both frontend and backend features.

It works with the dependency of acts_as_votable gem for more details [acts_as_votable](https://github.com/ryanto/acts_as_votable) 

##Setup 

## Gem Installation

Add this line to your application's Gemfile:

    gem 'like_dislike'

And then execute:

    $ bundle

## Database Migration
  
  Create migration for Votes polymorphic table for vote entries for all the resource

  ```ruby
    rails g like_dislike:migration
  ```

  For Caching and finding the vote counts easily, vote counts can be maintained on the resource level run this.

  ```ruby
  rails g like_dislike:migration TableName
  ```
  eg: 
  ```ruby
  rails g like_dislike:migration Post
  rails g like_dislike:migration Comment
  ```
  Finally run:
  ```ruby
  rake db:migrate
  ```
##Usage

  Add below code in you Votable Model reesource.
  ```ruby
  acts_as_votable
  ```
  For eg:
  ```ruby
  class Comment < ActiveRecord::Base
    acts_as_votable
  end
  ```
  Add below code in your Voter Resource Model resource.
  ```ruby
  acts_as_voter
  ```
  For eg:
  ```ruby
  class User < ActiveRecord::Base
    acts_as_voter
  end
  ```

  require the file in javascript and stylesheet in application:
  ```ruby
  #in application.js
  //= require like_dislike
  #in application.css
  *= require like_dislike
  ```

  Here the ultimate things comes, add this line wherever you want like and dislike button want to enable with resource:
  ```ruby
  <%= like_unlike_button(resource) %>
  ```

  For eg:
  ```ruby
  #bookmark is the object
  <%= like_unlike_button(bookmark) %>  
  ```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/like_dislike/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
