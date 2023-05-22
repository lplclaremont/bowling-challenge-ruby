## 1. Design the Route Signature

You'll need to include:
  * the HTTP method - GET
  * the path - /scorecard
  * any body params: roll1, roll2

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
      <label for="roll3">Roll three (if final frame):</label>
      <input type="int" name="roll3"><br>
      <input type="submit" value="Enter frame!">
    </form><br>

    <% @frames.each_with_index |frame, i| do %>
      <p>Frame <%= i %>: <%= frame.rolls[0] %>, <%= frame.rolls[1] %></p><br>
      <p>Score: <%= @game.total_up_to(i) %></p>
      <br><br>
    <% end %>

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

POST /scorecard
params: roll1 = 2, roll2 = 2

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

      <label for="roll3">Roll three (if final frame):</label>
      <input type="int" name="roll3"><br>

      <input type="submit" value="Enter frame!">
    </form><br>

    <p>Frame 1: 2, 2</p><br>
    <p>Score: 4</p>
    <br><br>
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
      response = post(
        '/scorecard',
        roll1: 2,
        roll2: 2
      )

      expect(response.status).to eq(200)
      expect(response.body).to include('<p>Frame 1: 2, 2</p><br>')
      expect(response.body).to include('<p>Score: 4</p>')
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->
