name = "domain_list.txt"
file = open name
PROXY = "DIRECT"
$domains = file.read.split
puts "function FindProxyForURL(host,url) {"
for domain in $domains
  if domain == $domains[0]
    puts "  if (shExpMatch(host, '*.#{domain}')) {\n    return '#{PROXY}';\n  }"
  else
    puts "  else if (shExpMatch(host, '*.#{domain}')) {\n    return '#{PROXY}';\n  }"
  end
end
black = "black.txt"
fb = open black
$black = fb.read.split
for black in $black
  puts "  else if (shExpMatch(host, '*.#{black}')) {\n    return 'PROXY 211.68.72.88:30000';\n  }"
end
puts "  else \n    return 'PROXY 211.68.72.88:30000';\n}"

