class Mytransaction < ApplicationRecord
  belongs_to :user
  belongs_to :group


  validates :name, presence: true, length: { maximum: 255 }
  validates :amount, presence: true

  def group?
    self.group_id == 0
  end

end