class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.text            :description
      t.string          :name
      t.datetime        :start_date
      t.datetime        :end_date
      t.references      :user, index: true
      t.timestamps
    end
  end
end
