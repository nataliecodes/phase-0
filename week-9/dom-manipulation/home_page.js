// DOM Manipulation Challenge

// I worked on this challenge with  Michael Whelpley.

// Add your JavaScript calls to this page:

// Release 0:

document.getElementById('release-0').className = 'done';

// Release 1:

document.getElementById('release-1').style.display = 'none';

// Release 2:

// Line 19 and 21 both work.

// document.getElementsByTagName('h1')[0].firstChild.data = "I completed release 2.";

document.getElementsByTagName('h1')[0].firstChild.textContent = "I completed release 2.";

// Release 3:

document.getElementById('release-3').style.backgroundColor='#955251';

// Release 4:

var x = document.getElementsByClassName('release-4');

for (var i=0;i<x.length;i++){
  x[i].style.fontSize='2em';
}

// Release 5:

var secrets = document.getElementById('hidden');

document.body.appendChild(secrets.content.cloneNode(true));

// Reflection

// What did you learn about the DOM?

// I learned that you can use the DOM to manipulate a lot of stuff
// on a website! Learning the basics was helpful. I think that
// accessing the inner tags of a nested html set could be
// difficult, but luckily we can 'write' to the screen in order
// to see what we are trying to access.

// What are some useful methods to use to manipulate the DOM?

// As per the above, 'write' is a helpful way to checkout where
// you are in your work. I also think that getElementBy___ will
// prove useful. Style will be helpful for any style changes
// that I want to implement with JavaScript.firstChild and the
// 'child' methods in general will be necessary for nested tags.