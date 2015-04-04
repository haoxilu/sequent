class Symbol
  def self.deserialize_from_json(value)
    value.try(:to_sym)
  end
end

class String
  def self.deserialize_from_json(value)
    value
  end
end

class Integer
  def self.deserialize_from_json(value)
    value.blank? ? nil : value.to_i
  end
end

class Boolean
  def self.deserialize_from_json(value)
    value.nil? ? nil : (value.present? ? value : false)
  end
end

class Date
  def self.deserialize_from_json(value)
    value.nil? ? nil : Date.iso8601(value.dup)
  end
end

class DateTime
  def self.deserialize_from_json(value)
    value.nil? ? nil : DateTime.iso8601(value.dup)
  end
end

class Array
  def self.deserialize_from_json(value)
    value
  end
end
