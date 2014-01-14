# Custom Defined Helpers

In addition to the [helpers provided by Middleman](http://middlemanapp.com/basics/helpers/)
out of the box, you can also add your [own helper methods](http://middlemanapp.com/basics/helpers/#toc_9)
and classes that will be accessible within any controller or view automatically.

You just need to define module and place in this directory.
Example:

```ruby
# helpers/coach_helpers.rb

module CustomHelpers
  def some_method
    # ...do something here...
  end
end
```
