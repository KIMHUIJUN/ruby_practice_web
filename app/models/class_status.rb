class ClassStatus < ApplicationRecord
  belongs_to :user
  belongs_to :class_list
  
	def overlap?
		ClassStatus.where(user_id: self.user_id, class_list_id: self.class_list_id).size > 0
	end
	
	def full?
		ClassStatus.where(class_list_id: self.class_list_id).size >= ClassList.find(self.class_list_id).c_account
	end
	def overrange?
		ClassStatus.where(user_id: self.user_id).size >= 7
	end
end
