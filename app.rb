require 'ovto'

class MyApp < Ovto::App
  class State < Ovto::State
  end

  class Actions < Ovto::Actions
  end

  class MainComponent < Ovto::Component
    def render           # Don't miss the `:`. This is not a typo but
      o 'div' do         # a "mandatory keyword argument".
        o 'h1', "HELLO"  # All of the Ovto methods take keyword arguments.
      end
    end
  end
end

MyApp.run(id: 'ovto')