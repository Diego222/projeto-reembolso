class AddFieldsToCusto < ActiveRecord::Migration
  def change
    add_reference :custos, :tipo, index: true
  end
end
