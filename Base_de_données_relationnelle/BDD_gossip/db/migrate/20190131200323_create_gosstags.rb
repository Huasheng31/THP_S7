class CreateGosstags < ActiveRecord::Migration[5.2]
  def change
    create_table :gosstags do |t|

      t.timestamps
    end
  end
end
