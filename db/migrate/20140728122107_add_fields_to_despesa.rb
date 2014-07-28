class AddFieldsToDespesa < ActiveRecord::Migration
  def change
    add_reference :despesas, :tipo, index: true
  end
end
