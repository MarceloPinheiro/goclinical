class Menu < ActiveRecord::Base

  has_many :menusub
  has_many :acesso

end
