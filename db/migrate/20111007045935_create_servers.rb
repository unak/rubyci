class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :uri

      t.timestamps
    end
  end
end
