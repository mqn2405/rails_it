require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "bootstrap";
import "../stylesheets/application"  // <- Add this line
import "@fortawesome/fontawesome-free/js/all";

// document.addEventListener("turbolinks:load", () => {
//     $('[data-toggle="tooltip"]').tooltip();
//     $('[data-toggle="popover"]').popover()
// });