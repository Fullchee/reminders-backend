## Links

- Frontend React App
  - [Website](https://fullchee-values.netlify.com/)
  - [GitHub](https://github.com/Fullchee/values-client)
- Backend
  - [GitHub](https://github.com/Fullchee/reminders-backend)
  - Postgres, Node, Express

---

## Install

1. Install yarn v1
2. Download the db from heroku (TODO: just get a dump from production)
   1. pg_dump -d `heroku config:get DATABASE_URL --app fullchee-reminders-backend` -Fc > reminders.dump
   2. `psql -U postgres -f db/links_dump.sql`
   3. `psql -U postgres -f db/post-restore.sql`
3. Create .env


**.env file**
```
DB_USER=postgres
DB_PASSWORD=postgres
DB_HOST=localhost
DB_PORT=5432
DB_DATABASE=postgres
```


```bash
yarn
yarn start
```

# Todos
- postman tests on each endpoint
- keyword search doesn't work
- multiple dates! (create a new table of id, dates, then query to get the latest)
- SSL & security
  - https://www.taniarascia.com/node-express-postgresql-heroku/
  - authentication, only allow certain URLs to make requests to it
- Optimize sql query
  - https://youtu.be/szfUbzsKvtE?t=216
  - create an column with the tsvector
  - create a GIN index on it


