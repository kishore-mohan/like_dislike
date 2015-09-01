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

    rails g like_dislike:migration

  For Caching and finding the vote counts easily, vote counts can be maintain on the resource level also.(#Optional)

    rails g like_dislike:migration TableName

  eg: 

    rails g like_dislike:migration Post
    rails g like_dislike:migration Comment

  Finally
    rake db:migrate

## Contributing

1. Fork it ( https://github.com/[my-github-username]/like_dislike/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
