class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|

      t.timestamps
      t.belongs_to :user

      t.string   :title
      t.string	 :description

    end
  end
end
