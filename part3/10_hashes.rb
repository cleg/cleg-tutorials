#!/usr/bin/env ruby -wKU

# this part shows working with hashes

# first definition format
puts "\n--- first style of defs ---"
h = {'Nick'  => 21, 'Jake'  => 27, 'Sue'  => 19}
puts h.length
h[12] = 'strange'
h['Balrog'] = 5000
p h

# second definition format
puts "\n--- second style of defs ---"
h = {base: 'layered', sauce: 'spicy', topping: 'ham'}
p h
