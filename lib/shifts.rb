module Shifts

  def make_keys(key)
    keys = []
      keys << key[0,2].to_i
      keys << key[1,2].to_i
      keys << key[2,2].to_i
      keys << key[3,2].to_i
    return keys
  end

  def make_offsets(date)
    offsets = []
    date = (date.to_i ** 2).to_s
      offsets << date[-4].to_i
      offsets << date[-3].to_i
      offsets << date[-2].to_i
      offsets << date[-1].to_i
    return offsets
  end

  def make_shifts(key, date)
    shifts = make_keys(key).zip(make_offsets(date))
    shifts.map { |pair| pair.sum }
  end

  def shifted_characters(key, date)
    characters_shifted = []
    shifts = make_shifts(key, date)
      characters_shifted << gen_characters.rotate(shifts[0])
      characters_shifted << gen_characters.rotate(shifts[1])
      characters_shifted << gen_characters.rotate(shifts[2])
      characters_shifted << gen_characters.rotate(shifts[3])
    return characters_shifted
  end

end
