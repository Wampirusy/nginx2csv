require './lib/options'

options = Options.new

if options.valid?
  require './lib/converter'
  converter = Converter.new(options)

  converter.convert.last_result
else
  options.errors
end
