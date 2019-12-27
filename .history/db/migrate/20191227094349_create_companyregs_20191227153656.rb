class CreateCompanyregs < ActiveRecord::Migration[5.1]
  def change
    create_table :companyregs do |t|
      t.integer :companyid
      t.string :companyname
      t.string :testname
      t.string :
      t.string :testdate
      t.datetime :

      t.timestamps
    end
  end
end
