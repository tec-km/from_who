class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|

      t.text :message ,  null: false
      t.text :age,       null: false
      t.string :career,  null: false
      t.references :user

      t.timestamps
    end
  end
end
