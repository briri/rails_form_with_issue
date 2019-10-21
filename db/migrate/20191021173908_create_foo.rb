class CreateFoo < ActiveRecord::Migration[5.2]
  def change
    create_table :foos do |t|
      t.string :title, index: true, null: false
      t.string :description
    end
  end
end
