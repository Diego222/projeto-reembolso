class AddFieldsToViagem < ActiveRecord::Migration
  def change
    add_reference :viagems, :user, index: true
  end
end
