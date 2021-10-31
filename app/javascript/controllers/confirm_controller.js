import { Controller } from "@hotwired/stimulus"
import { FetchRequest } from "@rails/request.js"

export default class extends Controller {
  static values = { message: String }

  dialog(event) {
    if (!(window.confirm(this.messageValue))) {
      event.preventDefault()
    } else {
      setTimeout(async () => {
        const request = new FetchRequest("get", '/notice', { responseKind: "turbo-stream" })
        await request.perform()
      }, 5000)

    }
  }
}
