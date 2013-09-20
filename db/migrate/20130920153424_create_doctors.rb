class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :doctor_name

      t.timestamps
    end
  end
end
