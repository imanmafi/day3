class String
  define_method(:find_and_replace) do |look_for, replace_with|
    self.gsub(look_for, replace_with)
  end
end
