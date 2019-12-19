class AddReadToMesssages < ActiveRecord::Migration[6.0]
  def change
    add_column :messsages, :read, :boolean, default: false
  end
end
