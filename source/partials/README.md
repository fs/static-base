# Partials

Partials are a way of sharing content across pages to avoid duplication.

Partial files are prefixed with an underscore and include the templating language
extension you are using. Here is an example footer partial named `_footer.erb`
that lives in the `source/partials` folder:

```slim
footer
  | Copyright 2011
```

Now, we can include this partial in the default layout using the `partial` method:

```slim
body
  = yield
  = partial "footer"
```

More info in the [Middleman guides](http://middlemanapp.com/basics/templates/#toc_6)
