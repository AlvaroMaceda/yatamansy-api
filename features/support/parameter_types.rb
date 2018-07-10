ParameterType(
    name: 'date', # 1/2/2018, 01/12/2017
    regexp: %r{(\d?\d)\/(\d?\d)\/(\d{4})},
    transformer: lambda { |day, month, year|
      Time.new(year,month,day)
    }
)