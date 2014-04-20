class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :number
      t.string :exp_date
      t.string :type

      t.timestamps
    end
  end
end
