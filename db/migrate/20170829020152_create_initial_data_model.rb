class CreateInitialDataModel < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, index: true, unique: true
      t.timestamps
    end

    create_table :bookings do |t|
      t.references :guest, null: false, index: true
      t.references :location, null: false, index: true
      t.timestamp :start_date, null: false
      t.timestamp :original_end_date, null: false
      t.timestamps
    end

    create_table :locations do |t|
      t.string :name
      t.text :description
      t.string :address_1, null: false
      t.string :address_2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.timestamps
    end

    create_table :extensions do |t|
      t.references :booking, null: false, index: true
      t.timestamp :new_end_date, null: false
      t.integer :reason, null: false
      t.text :message
      t.timestamps
    end

    create_table :relocations do |t|
      t.references :booking, null: false, index: true
      t.references :location, null: false
      t.integer :reason, null: false
      t.text :message
      t.timestamps
    end
  end
end
