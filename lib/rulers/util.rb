module Rulers
  def self.to_underscore(string)
    string.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    tr("-", "_").
  end
 end