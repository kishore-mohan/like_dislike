class AddColumnTo<%= name %> < ActiveRecord::Migration
  def change
    <% table_name = name.downcase.pluralize.to_sym %> 
    add_column <%= table_name %>, :cached_votes_up, :integer, :default => 0
    add_column <%= table_name %>, :cached_votes_down, :integer, :default => 0
    add_column <%= table_name %>, :cached_votes_score, :integer, :default => 0
    add_index  <%= table_name %>, :cached_votes_up
    add_index  <%= table_name %>, :cached_votes_down
    add_index  <%= table_name %>, :cached_votes_score
  end
end
