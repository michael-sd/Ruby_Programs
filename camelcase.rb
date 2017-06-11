class String

  def camelcase
    self.split.map { |x,i| i == 0? x: x.capitalize}.join
  end
end

@string = String.new
@string.camelcase
