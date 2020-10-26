if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

$a = 0

b = 1

def method
  c = 1
  puts "Переменная '$a' : #{defined?($a)}"
  puts "Переменная 'b'  : #{defined?(b)}"
  puts "Переменная 'c'  : #{defined?(c)}"

end
method
puts "Переменная '$a' : #{defined?($a)}"
puts "Переменная 'b'  : #{defined?(b)}"
puts "Переменная 'c'  : #{defined?(c)}"
