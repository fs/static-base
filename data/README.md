# Local Data

Sometimes it is useful to extract the data content of a page from the rendering.
This way some team members can concentrate on building up the database of content,
while another team member can build the structure of the site.

Local Data allows you to create `data/*.yml`

Here's an example file at `data/people.yml` with the contents:

``` yaml
friends:
  - Tom
  - Dick
  - Harry
```

Now, anywhere in our template files, we will have access to this data:

``` slim
h1 Friends
  ol
    - data.people.friends.each do |friend|
      li = friend
```

Which will render:

``` html
<h1>Friends</h1>
<ol>
  <li>Tom</li>
  <li>Dick</li>
  <li>Harry</li>
</ol>
```

Notice that the name of the `.yml` file (people) is the name of the object which
stores the data in your template: `data.people`.

This works for subdirectories as well.
If you have a file `data/people/tom.yml`, you can access it with `data.people.tom`.
