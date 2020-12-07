class UpdateAddressToString < ActiveRecord::Migration[6.0]
  def change
    change_column :plants, :address, :string
  end
end
