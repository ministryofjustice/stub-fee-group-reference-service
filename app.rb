class App
  def call(env)
    request  = Rack::Request.new env
    postcode = request.params['postcode']

    if request.post? && postcode
      fgr = FeeGroupReference.new postcode
      [fgr.status, { 'Content-Type' => 'application/json' }, [fgr.payload]]
    else
      [406, {}, ['Not Acceptable']]
    end
  end
end
