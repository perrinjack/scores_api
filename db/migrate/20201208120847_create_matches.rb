# frozen_string_literal: true

class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :home_team
      t.string :away_team
      t.integer :home_team_score
      t.integer :away_team_score
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
