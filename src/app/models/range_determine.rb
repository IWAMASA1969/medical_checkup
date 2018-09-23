class RangeDetermine < ApplicationRecord
  belongs_to :exam_item
  has_many :range_determine_tables
end
