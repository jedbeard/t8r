class AddToTranslateToTranslations < ActiveRecord::Migration
  def change
    add_column :translations, :to_translate, :text
  end
end
