class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :language
      t.string :key
      t.text :translation
      t.integer :project_id
      t.timestamps
    end
  end
end
