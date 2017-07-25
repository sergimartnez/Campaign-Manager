class CreatePrototypes < ActiveRecord::Migration[5.0]
  def change
    create_table :prototypes do |t|
      t.string        :name
      t.text          :description
      t.references    :campaign, index: true
      t.timestamps
    end
  end
end
