STDOUT.sync = true

require_relative 'app'
require_relative 'fee_group_reference'

map '/1/fgr-office' do
  run App.new
end
