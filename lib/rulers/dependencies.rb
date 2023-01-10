class Object
  def self.const_missing(c)
    STDERR.puts "Missing constant: #{c.inspect}!"
    require Rulers.to_underscore(c.to_s)
    Object.const_get(c)
  end
end