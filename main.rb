require_relative 'source'
require 'pry'

def valid_ip_addresses(string)
  string.scan(/\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b/)
end

def valid_mit_ip_addresses(string)
  string.scan(/[1][8]\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/)
end

def non_mit_ip_addresses(string)
  valid_ip_addresses(string) - valid_mit_ip_addresses(string)
end

def valid_phone_numbers(string)
  string.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes(string)
  string.scan(//)
end

def email_addresses(string)
  string.scan(/\w+@\w+\.com/)
end

def zip_codes(string)
  string.scan(/(?<=\D)[0-9]{5}(?=\D)/)
end

def hex_colors(string)
end
