class CreateIdols < ActiveRecord::Migration
  def change
    create_table :idols do |t|
      t.string :fullname
      t.string :kana
      t.integer :age
      t.integer :height
      t.integer :weight
      t.integer :bust
      t.integer :waist
      t.integer :hip
      t.date :birth
      t.string :blood
      t.string :dominant
      t.string :hobby
      t.string :speciality
      t.string :favorite

      t.timestamps
    end
  end
end
