class Pagamento < ActiveRecord::Base
  attr_accessor :parcelas, :datav, :prazo
  belongs_to :lancamento
end
