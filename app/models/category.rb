class Category < ActiveRecord::Base
  has_many :classifieds

  def to_s
    name.downcase
  end
end
