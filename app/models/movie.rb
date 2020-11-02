class Movie < ApplicationRecord
  has_many :credits
  has_many :people, through: :credits

  def directors
    people.where(credits: { role_id: Role.get_director_role })
  end

  def producers
    people.where(credits: { role_id: Role.get_producer_role })
  end

  def casting
    people.where(credits: { role_id: Role.get_cast_member_role })
  end

  def release_year
    to_roman self.created_at.year
  end

  private

  def roman_digits
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end

  def to_roman(number, result = "")
    return result if number == 0
    roman_digits.keys.each do |divisor|
      quotient, modulus = number.divmod(divisor)
      result << roman_digits[divisor] * quotient
      return to_roman(modulus, result) if quotient > 0
    end
  end
end
