// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
  setTimeout(function() {
    document.querySelector(".notice").remove();
  }, 30000); 
});

console.log(document.querySelector('.notice'))