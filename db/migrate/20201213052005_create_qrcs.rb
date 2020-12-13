class CreateQrcs < ActiveRecord::Migration[6.1]
  def change
    create_table :qrcs do |t|
      t.string :num
      t.string :discount

      t.timestamps
    end
  end
end
