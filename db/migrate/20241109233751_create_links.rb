class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :lookup_code
      t.string :original_url

      t.timestamps
    end
  end
end
