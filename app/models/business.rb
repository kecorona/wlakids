class Business < ActiveRecord::Base
  
  belongs_to :member

  def to_s
  	"#{business_line}"
  end

  def to_param
  	:business_line
  end

end
