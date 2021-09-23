# Todobackend

Adaptation in Phoenix 1.5.13 of https://github.com/jeffweiss/todobackend-phoenix

## Changes:

Create (don't create html/js parts):
```
mix phx.new todobackend --no-html --no-webpack --no-gettext --no-dashboard
```

Generate the Todo model (has to include Context):
```
mix phx.gen.json Todos Todo todos title:string order:integer completed:boolean
```

## Notes:

Create a Todo:

Set
```
Content-Type: application/json
```

And POST at least this content:
```
{
  "todo": {
      "title": "todotitle"
  }
}
```

## To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

