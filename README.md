# coursera-test
Coursera test repo

## General Links

- https://github.com/jhu-ep-coursera
- https://clearlydecoded.com/
- https://clearlydecoded.com/recommended-books/


## Week 1 - HTML5

> [Lecture 1](./fullstack-course4/examples/Lecture01) to [Lecture 10](./fullstack-course4/examples/Lecture10)

## Week 2 - CSS

> [Lecture 12](./fullstack-course4/examples/Lecture12) to [Lecture 26](./fullstack-course4/examples/Lecture26)

### [solution assignment week 2 on my github](https://petitnigaud.github.io/coursera-test/module2-solution/)

## Week 3 - Real Life Example

> [Lecture 27](./fullstack-course4/examples/Lecture27) to [Lecture 39](./fullstack-course4/examples/Lecture39)

[Bootstrap Documentation](https://getbootstrap.com/docs/)

Some interesting CSS / bootstrap features:

- text-shadow -> Adds shadow to text
- class="visible-md visible-lg" -> bootstrap classes to hide elements on smaller screens
    - now replaced by [Hiding Elements](https://getbootstrap.com/docs/5.2/utilities/display/#hiding-elements)?

### [solution assignment week 3 on my github](https://petitnigaud.github.io/coursera-test/module3-solution/)

## Week 4 - Javascript

> [Lecture 40](./fullstack-course4/examples/Lecture40) to [Lecture 52](./fullstack-course4/examples/Lecture52)

- [Lecture 41](./fullstack-course4/examples/Lecture41): define functions

```javascript 
var a = function () {
  var message = "inside a";
  console.log("a: message = " + message);
}

a();
```

- [Lecture 42](./fullstack-course4/examples/Lecture42): define variables, if else, undefined

```javascript 
// should be undefined
var x;
console.log(x);

if (x == undefined) {
  console.log("x is undefined");
}

x = 5;
if (x == undefined) {
  console.log("x is undefined");
}
else {
  console.log("x has been defined");
}
```

- See [Lecture 43](./fullstack-course4/examples/Lecture43) is a nice JS cheat sheet!
    - String and math operations
    - Equality (see below)
    - If statement and which values are interpreted as true or false
    - For loop

Standard vs. strict equality:

```javascript 
// ***** Equality 
var x = 4, y = 4;
if (x == y) {
  console.log("x=4 is equal to y=4");
}

x = "4";
if (x == y) {
  console.log("x='4' is equal to y=4");
}


// ***** Strict equality
if (x === y) {
  console.log("Strict: x='4' is equal to y=4");
}
else {
  console
  .log("Strict: x='4' is NOT equal to y=4");
}

```

- [Lecture 44](./fullstack-course4/examples/Lecture44): Handling default values

```javascript 
// Default values
function orderChickenWith(sideDish) {
  sideDish = sideDish || "whatever!";
  console.log("Chicken with " + sideDish);
}

orderChickenWith("noodles");
orderChickenWith();
```

- [Lecture 45](./fullstack-course4/examples/Lecture45): Creating Objects

```javascript 
// [...]

// Better way: object literal
var facebook = {
  name: "Facebook",
  ceo: {
    firstName: "Mark",
    favColor: "blue"
  },
  "stock of company": 110
};

console.log(facebook.ceo.firstName);

var stockPropName = "stock of company";
console.log("Stock price is: " + 
  company[stockPropName]);
```

- [Lecture 46](./fullstack-course4/examples/Lecture46): more on Functions

- [Lecture 47](./fullstack-course4/examples/Lecture47): referencing variables

- [Lecture 48](./fullstack-course4/examples/Lecture48): Function constructors, _prototype_ and _this_

- [Lecture 49](./fullstack-course4/examples/Lecture49): Object literals and the _this_ Keyword

- [Lecture 50](./fullstack-course4/examples/Lecture50): Arrays

    - Index starts as 0

```javascript
var array = new Array();
array[0] = "Yaakov";
array[1] = 2;
array[2] = function (name) {
  console.log("Hello " + name);
};
array[3] = {course: " HTML, CSS & JS"};

console.log(array);
// call function defined on index 2 with value on index 0
array[2](array[0]);
console.log(array[3].course);

// Short hand array creation
var names = ["Yaakov", "John", "Joe"];
console.log(names);

// loop over array
for (var i = 0; i < names.length; i++) {
  console.log("Hello " + names[i]);
}

// automatically extends array to length 100
names[100] = "Jim";
for (var i = 0; i < names.length; i++) {
  console.log("Hello " + names[i]);
}

// iterate through values
var names2 = ["Yaakov", "John", "Joe"];

var myObj = {
  name: "Yaakov",
  course: "HTML/CSS/JS",
  platform: "Courera"
};
for (var prop in myObj) {
  console.log(prop + ": " + myObj[prop]);
}

for (var name in names2) {
  console.log("Hello " + names2[name]);
}

names2.greeting = "Hi!";

// iterates through all object properties! ("name" is deprecated)
for (var name in names2) {
  console.log("Hello " + names2[name]);
}
```

- [Lecture 51](./fullstack-course4/examples/Lecture51): Closures

- [Lecture 52](./fullstack-course4/examples/Lecture52): Fake Namespaces

    - 3 JS are called: script1, script2, app in the order they are embedded in html and so overwrite variables:

```javascript
// script1.js
var name = "Yaakov"
function sayHello () {
    console.log("Hello " + name);
};
// script2.js
var name = "John"
function sayHi () {
    console.log("Hi " + name);
};
// app.js
sayHello();
sayHi();

// prints out same name:
// Hello John
// Hi John
```

 - Create own namespace:

```javascript
// script1.js
var yaakovGreeter = {};
yaakovGreeter.name = "Yaakov";
yaakovGreeter.sayHello = function () {
console.log("Hello " + yaakovGreeter.name);
}
// script2.js
var johnGreeter = {};
johnGreeter.name = "John";
johnGreeter.sayHi = function () {
console.log("Hi " + johnGreeter.name);
}
// app.js
yaakovGreeter.sayHello();
johnGreeter.sayHi();

// prints out different names:
// Hello Yaakov
// Hi John
```

 - Immediately Invoked Function Expression (IIFE):

```javascript
// is immediately executed with "Coursera!" as name
(function (name) {
  console.log("Hello " + name);
})("Coursera!");
```
 - Expose to _window_ outside ("global")

```javascript
// script1.js
(function (window) {
  var yaakovGreeter = {};
  yaakovGreeter.name = "Yaakov";
  var greeting = "Hello ";
  yaakovGreeter.sayHello = function () {
    console.log(greeting + yaakovGreeter.name);
  }

  window.yaakovGreeter = yaakovGreeter;

})(window);

// app.js
yaakovGreeter.sayHello();
```

### [solution assignment week 4 on my github](https://petitnigaud.github.io/coursera-test/module4-solution/)

## Week 5

> [Lecture 53](./fullstack-course4/examples/Lecture53) to [Lecture 63](./fullstack-course4/examples/Lecture63)

- [Lecture 53](./fullstack-course4/examples/Lecture53): DOM Manipulation
  - DOM - Document Object Model
  - in JS _document_ object represents the web page
  - Get and manipulate HTML elements

```javascript
function sayHello () {
  var name =
   document.getElementById("name").value;   // get element by name and then its value
  var message = "<h2>Hello " + name + "!</h2>";  // add h2 tag

  document
    .getElementById("content")
    .innerHTML = message;   // innerHTML renders HTML code as <h2></h2>

  if (name === "student") {
    var title = 
      document
        .querySelector("#title")    // select by query (id)
        .textContent;
    title += " & Lovin' it!";
    document
        .querySelector("h1")    // select by query (element type)
        .textContent = title;
  }
}
```

- [Lecture 54](./fullstack-course4/examples/Lecture54): Handling Events
  - Add JS functions to events (line _onclick_) of HTML page
  - _DOMContentLoaded_ event -> see below


```javascript
function sayHello (event) {
    // this points to element emitting the event
    this.textContent = "Said it!"; // set content of that element
    // [...]
}
// Unobtrusive event binding
document.querySelector("button")
    .addEventListener("click", sayHello);


// use this to load embedded content after HTML page has loaded
// -> JS can be imported in HTML header instead of end of HTML content
document.addEventListener("DOMContentLoaded",
  function (event) {
    // [...]
  }
)
```

- [Lecture 55](./fullstack-course4/examples/Lecture55): The _event_ Argument
  - [Event Documentation on Mozilla Developer](https://developer.mozilla.org/en-US/docs/Web/Events)

```javascript
// add to object "body" "Mousemove" event and print mouse coordinates of shift is pressed
document.querySelector("body")
.addEventListener("mousemove",
  function (event) {
    if (event.shiftKey === true) {
      console.log("x: " + event.clientX);
      console.log("y: " + event.clientY);
    }
  }
);
```

- Lecture 56: HTTP Basics
  - _URI_: Uniform Resource Identifier
  - `GET /index.html?firstName=Yaakov HTTP/1.1`
    - `GET`: Method
    - `/index.html`: URI String
    - `firstName=Yaakov`: Query String
    - `HTTP/1.1`: HTTP Version
  - _GET_ method: Retrieves source, data passed as part of URI (i.e. query)
  - _POST_ method: Sends data to server to be processed, data sent in message body
  - request headers: 
    - _Host: coursera.org_
    - _Accept-Charset: utf-8_
  - response structure:
    - _HTTP/1.1_: HTTP Version
    - _200_: response status code
    - _OK_: english response text of status code

- [Lecture 57](./fullstack-course4/examples/Lecture57): Ajax Basics 
  - _Asynchronous Javascript And XML_
  - XML not much used today, but plain text and JSON
  - Instead of responding with whole HTML web page, only small part is returned (much faster)

- [Lecture 58](./fullstack-course4/examples/Lecture58): Processing JSON
  - JSON not a JS Object Literal, just a string
  - Needs conversion
    - `var obj = JSON.parse(jsonString);`
    - `var str = JSON.stringify(obj);`


- [Lecture 59](./fullstack-course4/examples/Lecture59): Using JQuery (for example website)
 - [JQuery](https://jquery.com/) is a JS library with nice features

```javascript
$(function () { // Same as document.addEventListener("DOMContentLoaded"...

  // Same as document.querySelector("#navbarToggle").addEventListener("blur",...
  $("#navbarToggle").blur(function (event) {
    var screenWidth = window.innerWidth;
    if (screenWidth < 768) {
      $("#collapsable-nav").collapse('hide');
    }
  });
});
```

- [Lecture 61](./fullstack-course4/examples/Lecture61): Using JQuery (for example website)
  - (Similar to Python f-strings) replace keywords in double curly braces in strings

```html
<div class="col-md-3 col-sm-4 col-xs-6 col-xxs-12">
  <a href="#" onclick="$dc.loadMenuItems('{{short_name}}');">
    <div class="category-tile">
      <img width="200" height="200" src="images/menu/{{short_name}}/{{short_name}}.jpg" alt="{{name}}">
      <span>{{name}}</span>
    </div>
  </a>
</div>
```

```javascript
// Return substitute of '{{propName}}'
// with propValue in given 'string'
var insertProperty = function (string, propName, propValue) {
  var propToReplace = "{{" + propName + "}}";
  string = string.replace(new RegExp(propToReplace, "g"), propValue);
  return string;
};
```

### [solution assignment week 5 on my github](https://petitnigaud.github.io/coursera-test/module5-solution/)
