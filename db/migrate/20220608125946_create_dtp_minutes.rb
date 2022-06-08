class CreateDtpMinutes < ActiveRecord::Migration[7.0]
  def change
    create_table :dtp_minutes do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
