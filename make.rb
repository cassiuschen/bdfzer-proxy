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
puts "  else \n    return 'PROXY 211.68.72.88:30000';\n}"

