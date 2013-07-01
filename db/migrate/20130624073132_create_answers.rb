class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :option
      t.references :user
      t.references :question
      t.references :option
      t.timestamps
    end
  end
end
