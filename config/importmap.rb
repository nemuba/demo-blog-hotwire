# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.js"
pin "@hotwired/stimulus", to: "stimulus.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "@rails/request.js", to: "https://ga.jspm.io/npm:@rails/request.js@0.0.5/src/index.js"
