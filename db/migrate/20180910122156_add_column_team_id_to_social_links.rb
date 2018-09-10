class AddColumnTeamIdToSocialLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :social_links, :team_id, :integer
  end
end
