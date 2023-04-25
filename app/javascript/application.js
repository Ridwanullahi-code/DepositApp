// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const text = document.querySelector('.notice');
setTimeout(() => {
    text.classList.toggle('show');
}, 1500);