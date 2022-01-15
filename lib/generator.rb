module Generator

  def gen_key
    key = rand(10 ** 5).to_s
    return key.rjust(5, '0')
  end

  def gen_date

  end

  def gen_characters
    ("a".."z").to_a << " "
  end

end
