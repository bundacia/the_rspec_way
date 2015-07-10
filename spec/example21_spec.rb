# ------------------------
# Putting It All Together
# ------------------------
#
ds = DataSource.new timeout: 4

ds.timeout :action1 # => 4
ds.timeout :action2 # => 4
ds.timeout :somethingelse # => 4

ds = DataSource.new

ds.timeout :action1 # => DataSource::DEFAULT_TIMEOUT
ds.timeout :action2 # => DataSource::DEFAULT_TIMEOUT
ds.timeout :somethingelse # => DataSource::DEFAULT_TIMEOUT
