class CreateGreenfoods < ActiveRecord::Migration[5.1]
  def change
    create_table :greenfoods do |t|

      t.timestamps
    end
  end
end
