# ------------------------
# Putting It All Together
# ------------------------
#

ds1 = DataSource.new timeout: {
       action1: 5 ,
       action2: 10,
     }
ds1.timeout :action1 # => 5
ds1.timeout :action2 # => 10
ds1.timeout :somethingelse # => DataSource::DEFAULT_TIMEOUT

ds2 = DataSource.new timeout: 4
ds2.timeout :action1 # => 4
ds2.timeout :action2 # => 4
ds2.timeout :somethingelse # => 4

ds3 = DataSource.new
ds3.timeout :action1 # => DataSource::DEFAULT_TIMEOUT
ds3.timeout :action2 # => DataSource::DEFAULT_TIMEOUT
ds3.timeout :somethingelse # => DataSource::DEFAULT_TIMEOUT
