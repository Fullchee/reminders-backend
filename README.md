## Links

- Frontend React App
  - [Website](https://fullchee-values.netlify.com/)
  - [GitHub](https://github.com/Fullchee/values-client)
- Backend
  - [GitHub](https://github.com/Fullchee/reminders-backend)
  - Postgres, Node, Express

---

## Install

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


.env file
```
DB_USER=
DB_PASSWORD=
DB_HOST=
DB_PORT=
DB_DATABASE=
```