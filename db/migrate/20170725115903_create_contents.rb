class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.text            :description
      t.string          :name
      t.references      :prototype, index: true
      t.timestamps
    end
  end
end
