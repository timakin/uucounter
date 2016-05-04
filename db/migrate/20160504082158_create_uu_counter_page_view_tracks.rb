class CreateUuCounterPageViewTracks < ActiveRecord::Migration
  def change
    create_table :uu_counter_page_view_tracks do |t|
      t.string :uuid
      t.text :path

      t.timestamps null: false
    end
  end
end
