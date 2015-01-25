class AddImageToUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :image
    end
    change_table :identities do |t|
  		t.string :image
    end
    change_table :profiles do |t|
  		t.string :image
    end
  end
end
