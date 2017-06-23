fruit = "apple";

number = 42;

addTwo = n => n + 2;

// Higher Order Functions

process = (list, processor) => list.map(processor);

processedList = process([1, 2, 4], n => n * 2);

doubleProcessItem = (item, fn) => fn(fn(item));

twiceTheFun = doubleProcessItem("Hello", str => str + "!");

// Composition with Functions

body = model => $.div([], [title(model.user), space(), allTodos(model.todos), footer()]);

title = user => $.h2([], [$.text(user + "'s Todo List")]);

space = () => $.hr([], []);

allTodos = todos => $.ul([], todos.map(todoView));

todoView = todo =>
  $.li(
    [],
    [
      $.span([], [$.text(todo.title)]),
      $.span([], [$.text(todo.complete)]),
      $.span([], [$.text("Important? " + todo.important)])
    ]
  );

footer = () => $.div([], [$.text("Made with 💕")]);

// Referential Transparency

addTwo = n => n + 2;

// Randomness

getRandom = () => Math.random() * 100;

// Immutability

people = [new Person("Sally", 90), new Person("Bill", 20)];
//NOTE: Don't change me

const fizzbuzz = (n, xs) => {
  if (n <= 0) {
    return xs;
  } else {
    let result = n;
    if (n % 15 == 0) {
      result = "fizzbuzz";
    } else if (n % 5 == 0) {
      result = "buzz";
    } else if (n % 3 == 0) {
      result = "fizz";
    }
    return fizzbuzz(n - 1, xs.push(result));
  }
};

const fizzbuzz = (n, xs) => {
  if (n <= 0) {
    return xs;
  } else {
    let result = n;
    if (n % 15 == 0) {
      result = "fizzbuzz";
    } else if (n % 5 == 0) {
      result = "buzz";
    } else if (n % 3 == 0) {
      result = "fizz";
    }
    xs.push(result);
    return fizzbuzz(n - 1, xs);
  }
};
