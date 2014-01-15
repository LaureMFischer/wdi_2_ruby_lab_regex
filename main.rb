require_relative 'source'
require 'pry'

def valid_ip_addresses(string)
  string.scan(/\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b/)
end

def valid_mit_ip_addresses(string)
  string.scan(/\b(?:18{1}\.){1}([0-9]{1,3}\.){2}([0-9]{1,3})\b/)
 # string.scan(/\b(18{1}\.){1}([0-9]{1,3}\.){2}[0-9]{1,3}\b/)
end

def non_mit_ip_addresses
end

def valid_phone_numbers(string)
  string.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes
end

def email_addresses
end

def zip_codes
end

def hex_colors
end
