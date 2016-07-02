class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :subject
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
