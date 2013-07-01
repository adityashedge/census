class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :stype
      t.string :year
      t.string :location
      t.timestamps
    end
  end
end

