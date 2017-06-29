class AddPaymentsAndPaymentsDateToStudents < ActiveRecord::Migration
  def change
    add_column :students, :payment, :boolean
    add_column :students, :payment_date, :date
  end
end
