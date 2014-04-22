 #!/usr/bin ruby
$LOAD_PATH << "lib"
require 'zeller'
require 'formatting'
require 'formatYear'


m =  ARGV[0]
y = ARGV[1]
month = PrintMonth.new(m, y)
month.print_header
