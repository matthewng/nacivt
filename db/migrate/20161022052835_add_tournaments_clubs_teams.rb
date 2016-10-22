class AddTournamentsClubsTeams < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name, null: false
      t.string :host_city
      t.belongs_to :host_club
      t.string :address, null: false
      t.date :start, null: false
      t.date :end, null: false
      t.date :signup_deadline, null: false
      t.timestamps
    end
 
    create_table :clubs do |t|
      t.string :name
      t.timestamps
    end

    create_table :teams do |t|
      t.string :name
      t.belongs_to :club, index: true
      t.belongs_to :tournament, index: true
      t.timestamps
    end

    create_table :users_teams, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :team, index: true
    end

    add_reference :users, :club, index: true
  end
end
