class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                  reject_if: lambda{ |attr| attr['name'].blank? }


  include Placeholder
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  belongs_to :user

  def self.angular
    where(title: "Angular")
  end

  #lambda function
  scope :ruby_on_rails, -> {where(title: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: "350", width: "350")
    self.thumb_image ||= Placeholder.image_generator(height: "150", width: "150")
  end

end
