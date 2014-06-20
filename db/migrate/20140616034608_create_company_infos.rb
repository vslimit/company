class CreateCompanyInfos < ActiveRecord::Migration
  def change
    create_table :company_infos do |t|
      t.string :name
      t.string :description
      t.string :status
      t.datetime :online_time
      t.string :alias
      t.string :tel
      t.string :address
      t.string :linkman

      t.timestamps
    end
  end
end
