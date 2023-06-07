class AddAddressToEntry < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :address, :text
  end
end
