# README

# Solution Test

## Step to reproduce

- Install gems
- run `rails server`
- test the url in `Postman` `http://127.0.0.1:3000/sessions` [METHOD] `POST` with the next `body`

```
{
  "session": {
    "coach_hash_id": "3B6V97csyi1x",
    "client_hash_id": "3B6V97csyi1x",
    "start": "2024-01-13T14:00:00Z",
    "duration": 60
  }
}

```

