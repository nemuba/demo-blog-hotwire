import { Controller } from "@hotwired/stimulus"
import { FetchRequest } from "@rails/request.js"
// Connects to data-controller="notice"
export default class extends Controller {
  clear(event) {
    event.preventDefault()

    setTimeout(async () => {
      const request = new FetchRequest("get", '/notice', { responseKind: "turbo-stream" })
      await request.perform()
    }, 5000)

    event.target.requestSubmit()
  }
}
