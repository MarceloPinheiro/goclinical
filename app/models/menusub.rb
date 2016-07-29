class Menusub < ActiveRecord::Base
  belongs_to :menu
  has_many :acesso
end
