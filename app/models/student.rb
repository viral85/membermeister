class Student < ApplicationRecord
  belongs_to :parent, class_name: 'Student', optional: true
  has_many :children, class_name: 'Student', foreign_key: :parent_id

  def grandchildren
    Student.where(parent_id: children.ids)
  end

end
