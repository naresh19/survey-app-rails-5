class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :description
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end
end
