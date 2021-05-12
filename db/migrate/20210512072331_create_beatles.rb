class CreateBeatles < ActiveRecord::Migration[5.1]
  def change
    create_table :beatles do |t|
      t.string :name

      t.timestamps
    end
  end
end
