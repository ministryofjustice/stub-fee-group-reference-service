STDOUT.sync = true

require_relative 'app'
require_relative 'fee_group_reference'

map '/1/fgr-et-office' do
  run App.new
end

map '/1/new-claim' do
  run ->(env) do
    [200, { 'Content-Type' => 'application/json' }, [{ status: 'ok'}.to_json]]
  end
end
