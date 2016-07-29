class Acesso < ActiveRecord::Base
  belongs_to :user
  belongs_to :menusub
end
