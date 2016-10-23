class AddTournamentsClubsTeams < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name, null: false
      t.string :host_city
      t.references :club, index: true
      t.string :address, null: false
      t.date :start, null: false
      t.date :end, null: false
      t.timestamps
    end
 
    create_table :clubs do |t|
      t.string :name
      t.references :user, index: true
      t.timestamps
    end

    create_table :teams do |t|
      t.string :name
      t.references :club, index: true
      t.references :tournament, index: true
      t.timestamps
    end

    create_table :users_teams, id: false do |t|
      t.references :user, index: true
      t.references :team, index: true
    end

    add_reference :users, :club, index: true
  end
end
