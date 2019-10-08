class AddColumnsToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :facebook_link, :string
    add_column :portfolios, :linkedin_link, :string
    add_column :portfolios, :insta_link, :string
    add_column :portfolios, :twitter_link, :string
    add_column :portfolios, :github_link, :string
  end
end
