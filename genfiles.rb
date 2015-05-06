list = ["Amelia","Cerulean","Cosmo","Cyborg","Darkly","Flatly","Journal","Lumen","Paper","Readable","Sandstone","Simplex","Slate","Spacelab","Superhero","United","Yeti"]

list.each do |name|
  file = File.new(name.downcase + ".scss","w")
  file.puts "//Import bootstrap-sprockets"
  file.puts '@import "bootstrap-sprockets";'

  file.puts("// Import "+ name.downcase + " variables")
  file.puts '@import "bootswatch/' + name.downcase + '/variables";'
  file.puts '@import "bootstrap";'
  file.puts '// Bootstrap body padding for fixed navbar'
  file.puts 'body { padding-top: 60px; }'
  file.puts '@import "bootswatch/' + name.downcase + '/bootswatch";'


end