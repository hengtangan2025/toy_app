class Mincropost < ActiveRecord::Base
    belong_to :user
    validates :content, length: { maximum: 140 }
end
