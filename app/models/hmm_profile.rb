class HmmProfile < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 16 }

  has_many :children, :class_name => "HmmProfile", :foreign_key => "hmm_profile_id", :dependent => :destroy
  belongs_to :parent, :class_name => "HmmProfile", :foreign_key => "hmm_profile_id"
end
