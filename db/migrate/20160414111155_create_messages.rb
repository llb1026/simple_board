class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

    t.string  :name
    t.string  :address
    t.text    :content

      t.timestamps null: false
    end
  end
end
