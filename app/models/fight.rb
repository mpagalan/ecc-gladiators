class Fight < ActiveRecord::Base
  belongs_to :winner, :class_name => 'Gladiator'
  belongs_to :loser , :class_name => 'Gladiator'
  
end
