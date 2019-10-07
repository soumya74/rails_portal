class Blog < ApplicationRecord
    enum status: {draft: 0, published: 1}
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title, :body

    belongs_to :topic
    belongs_to :user

    # Defines when Friendly_Id changes / updates the slug value
    # Here we have set it to change on change in title.
    # FriendlyId version 5(Rails 4 compatible) doesnt re-generates unless we define it explicitly
    def should_generate_new_friendly_id?
        title_changed?
    end
end
