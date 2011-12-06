# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# Add files and commands to this file, like the example:
#   watch('file/path') { `command(s)` }
#
guard 'shell' do
  #watch('(.*).txt') {|m| `tail #{m[0]}` }
  watch('print_self.rb') {|m| `ruby #{m[0]}` }
  watch('inherit_self.rb') {|m| `ruby #{m[0]}` }
end
