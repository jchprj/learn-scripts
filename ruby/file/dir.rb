Dir['mydir/*'].select { |f| File.file?(f) }.sum { |f| File.size(f) }

Dir["/path/to/search/*"]

Dir["/path/to/search/**/*.rb"]

Dir.entries("your/folder").select {|f| !File.directory? f}

Dir.entries( home ).select{ |f| File.file? File.join( home, f ) }

Dir.new('/path/to/dir').entries.reject { |f| File.directory? f }
