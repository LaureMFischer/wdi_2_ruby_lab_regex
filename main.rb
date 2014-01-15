require_relative 'source'
require 'pry'

def valid_ip_addresses(string)
  string.scan(/(?:[0-9]{1,3}\.){3}[0-9]{1,3}/) # Can use \d instead of [0-9] - will look for any digit
end

def valid_mit_ip_addresses(string)
  string.scan(/[1][8]\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/) # Can remove brackets from 1 and 8, same thing
end

def non_mit_ip_addresses(string)
  valid_ip_addresses(string) - valid_mit_ip_addresses(string)
end

def valid_phone_numbers(string)
  string.scan(/[2-9]\d{0,2}-\d{0,3}-?\d{4}/).uniq # question mark means thing immediately preceding it is optional
end

def area_codes(string)
  string.scan(/[2-9]\d{2}(?=-[0-9]{3}-[0-9]{4})/).uniq
end

def email_addresses(string)
  string.scan(/\w+@\w+\.com/) # word characters are letters, numbers, underscores
end

def zip_codes(string)
  string.scan(/(?<=\D)\d{5}(?=\D)/)
  # Anna's solution: string.scan(/\b\d{5}\b/)
end

def hex_colors(string)
  string.scan(/(?<=#)[0-9a-f]{6}/) # Using positive look-behind
  # Can also use character class \h #this is the equivalent of 0-9 and a-f, has all hex digits
end
