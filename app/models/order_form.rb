class OrderForm
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_accessor :name, :email, :tel, :serv, :extra_info
  validates_presence_of :name, :email, :tel, :serv, :extra_info

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end
