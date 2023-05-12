// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// document.addEventListener("DOMContentLoaded", function() {
//   setTimeout(function() {
//     document.querySelector(".notice").remove();
//   }, 30000);
// });

// console.log(document.querySelector('.notice'))


  
const harmbugger = document.querySelector('.harmbugger')
const menu = document.querySelector('.menu')

harmbugger.addEventListener('click', () => {
  menu.classList.toggle('hidden')
})

// const questionBtn = document.querySelector('.question-btn');
// const answer = document.querySelector('.answer');

// questionBtn.addEventListener('click', () => {
//   console.log("clicked")
// })

// This is the function we wrote earlier
const copy = 'md73829373';
const referral = document.querySelector('.referral-link');

async function copyTextToClipboard(string) {
  if ("clipboard" in navigator) {
    return await navigator.clipboard.writeText(text);
  } else {
    return document.execCommand("copy", true, text);
  }
}

//onClick handler function for the copy button
  const handleCopyClick = () => {
    // Asynchronously call copyTextToClipboard
    copyTextToClipboard(copy)
      .then(() => {
        // If successful, update the isCopied state value
        setIsCopied(true);
        setTimeout(() => {
          setIsCopied(false);
        }, 1500);
      })
      .catch((err) => {
        console.log(err);
      })
  }
