### Message to Students Using Docker

Docker students MUST change line 8 of `spec_helper.rb` to be compatible with Docker before initially starting their project. 

Line 8:

```ruby
DB = PG.connect({:dbname => 'volunteer_tracker_test'})
```

Should be:

```ruby
DB = PG.connect({dbname => 'volunteer_tracker_test', host: 'db', user: 'postgres', password: 'password' }})
```

Where you are changing the property values as necessary. 

**If you did not make this change before starting your project** (with `docker-compose up`), you will need to start your project over from scratch. This means shutting down your container, clearing out all of your Docker images, and restarting your container:

```
docker-compose down
docker system prune -a
docker-compose up
```

