class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness:  { case_sensitive: false }
	has_many :products, dependent: :destroy

	def self.add_user(name, email)
		User.create(name: name, email: email)
	end

	def self.users_list
		User.all
	end

	def user_by_id(id)
		User.find_by(id: id)
	end
end
