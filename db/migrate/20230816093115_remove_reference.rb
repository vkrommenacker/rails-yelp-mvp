class RemoveReference < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:reviews, :restaurant, index: true)
  end
end
