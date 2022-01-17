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
    characters_shifted = {
      :shift_1 => gen_characters.rotate(make_shifts(key, date)[0]),
      :shift_2 => gen_characters.rotate(make_shifts(key, date)[1]),
      :shift_3 => gen_characters.rotate(make_shifts(key, date)[2]),
      :shift_4 => gen_characters.rotate(make_shifts(key, date)[3])
    }
    return characters_shifted
  end

end
