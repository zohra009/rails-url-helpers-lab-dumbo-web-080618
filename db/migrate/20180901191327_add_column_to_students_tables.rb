class AddColumnToStudentsTables < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, default: 0 #boolean in AR is 0 or 1 0= false and 1= true

  end
end
