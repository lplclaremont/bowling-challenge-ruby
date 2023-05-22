
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
# Request:

GET /posts?id=276278

# Expected response:

Response for 404 Not Found
```

## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /" do
    it 'returns 200 OK' do
      # Assuming the post with id 1 exists.
      response = get('/posts?id=1')

      expect(response.status).to eq(200)
      # expect(response.body).to eq(expected_response)
    end

    it 'returns 404 Not Found' do
      response = get('/posts?id=276278')

      expect(response.status).to eq(404)
      # expect(response.body).to eq(expected_response)
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->