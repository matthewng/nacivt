class RenameUsersTeamsTable < ActiveRecord::Migration
  def self.up
    rename_table :users_teams, :teams_users
  end

  def self.down
    rename_table :teams_users, :users_teams
  end
end
