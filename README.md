# The RSpec Way

These are the resources used in my RubyJax talk on July 9th, 2015

They've been adapted to allow you to run the code locally.

When you run the tests you should see them all pass except example 25 which is being intentionally skipped.

```
% rspec
............................................*..

Pending: (Failures listed here are expected and do not affect your suite's status)

  1) Item.search can lookup by name
     # this test would fail!
     # ./spec/example25_spec.rb:10


Finished in 0.01011 seconds (files took 0.19925 seconds to load)
47 examples, 0 failures, 1 pending

```

A few classes have been stubbed out to make the rest of the tests pass.
