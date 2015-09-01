require 'rails/generators/active_record'

module LikeDislike
	module Generators
    # Migration generator that creates migration file from template
    class MigrationGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      argument :name, :type => :string, :default => 'create_votes'

      def copy_cache_vote_migration
        if name == "create_votes"
          migration_template "migration_vote_table.rb", "db/migrate/create_votes.rb"
        else
          migration_template "migration_cache_vote.rb", "db/migrate/add_column_to_#{table_name}.rb"
        end
      end

    end
  end
end
