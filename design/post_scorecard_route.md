## 1. Design the Route Signature

You'll need to include:
  * the HTTP method - GET
  * the path - /scorecard
  * any query parameters (passed in the URL)

## 2. Design the Response

a form for rolls to be filled out, and running total values

```html
<!-- EXAMPLE -->
<!-- Response when the post is found: 200 OK -->

<html>
  <head></head>
  <body>
    <h3>Enter rolls for your frame:<h3>
    <form action="/scorecard" method="POST">
      <label for="roll1">Roll one:</label>
      <input type="int" name="roll1"><br>
      <label for="roll2">Roll two:</label>
      <input type="int" name="roll2">
      <input type="submit" value="Enter frame!">
    </form><br>

    <p>Frame 1: <%= @frames[0].rolls[0] %>, <%= @frames[0].rolls[1] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 2: <%= @frames[1].rolls[0] %>, <%= @frames[1].rolls[1] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 3: <%= @frames[2].rolls[0] %>, <%= @frames[2].rolls[1] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 4: <%= @frames[3].rolls[0] %>, <%= @frames[3].rolls[1] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 5: <%= @frames[4].rolls[0] %>, <%= @frames[4].rolls[1] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 6: <%= @frames[0].rolls[5] %>, <%= @frames[5].rolls[1] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 7: <%= @frames[1].rolls[6] %>, <%= @frames[6].rolls[1] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 8: <%= @frames[2].rolls[7] %>, <%= @frames[7].rolls[1] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 9: <%= @frames[3].rolls[8] %>, <%= @frames[3].rolls[8] %></p><br>
    <p>Score: <%= %></p>
    <br><br>
    <p>Frame 10: <%= @frames[9].rolls[0] %>, <%= @frames[9].rolls[1] %>, <%= @frames[9].rolls[2] %>></p><br>
    <p>Score: <%= %></p>
    <br><br>

  </body>
</html>
```

```html
<!-- EXAMPLE -->
<!-- Response when the post is not found: 404 Not Found -->

```

## 3. Write Examples

_Replace these with your own design._

```
# Request:

GET /scorecard

# Expected response:

Response for 200 OK
```
<html>
  <head></head>
  <body>
    <h3>Enter rolls for your frame:<h3>
    <form action="/scorecard" method="POST">
      <label for="roll1">Roll one:</label>
      <input type="int" name="roll1"><br>
      <label for="roll2">Roll two:</label>
      <input type="int" name="roll2">
      <input type="submit" value="Enter frame!">
    </form><br>
  <body>
</html>

```

## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /scorecard" do
    it 'returns 200 OK' do
      response = get('/scorecard')

      expect(response.status).to eq(200)
      expect(response.body).to include('<form action="/scorecard" method="POST">')
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->
