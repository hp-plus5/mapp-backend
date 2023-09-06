class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.string :file_name
      t.text :contents

      t.timestamps
    end
  end
end
