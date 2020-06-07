# Trail

An app of many steps :)

Trail is an experiment in a generic workflow engine as the heart of a
background processing app. Is it easier to extend and understand?

It uses:

- Postgresql for persistence
- Sorbet for static type checking
- Minitest for tests
- Fixtures for test data
- A minimal amount of progressive JavaScript

Perhaps unusually, it does not use:

- RSpec (slow, complicated)
- Factory bot (slow)
- Lazy loading of associations (slow)
- Sidekiq (unreliable, the throughput is not needed)
- Redis (the aim is to write fast code rather than to use caching as a
  band-aid over slow code)
- Large amounts of front-end code or a framework (slows page load, error
  prone, expensive to develop for a small team, reduces device compatibility)
