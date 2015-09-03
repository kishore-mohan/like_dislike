LikeDislike::Engine.routes.draw do
  match :upvote, to: 'votes#create', as: :upvote, via: :post
  match :downvote, to: 'votes#destroy', as: :downvote, via: :post
end