# Introduction to Java Script

1. Data type declaration in js is not necessary

2. To find the what type of data type the variable is we use

   ```js
   Syntax: typeof var_name;
   ```

   example:

   ```js
   typeof name;
   string;
   ```

3. In javascripts the dictioneries are called as objects
4. student.name & student['name'] will give same output
5. variable declaration:

   ```js
   var stud_name="sumanth"

   var student={
    name: "sumanth"
    age: 20
    comp : "proclink"
   }
   ```

   # Types of delcarations

   ```js
   var- can be reassigned, and redeclared
   let - can be reassiagned but mot in  redeclaration

   const - both are not possible
   ```

   Example:

   ```js
   var name=ravi;
   let name;//it gives error
   const surname;//it can't be changed
   ```

   # Data Types

```js
typeof t;
object;
typeof 4.5;
number;
typeof array;
```

## How to print

```js
console.log(student[name]);
```

```js
Undefined is a value
undeclared means an error
```

## Scope

var-- can be accessible from any part of the code(function scope but not block scope)

let -- can be accessible within the block

## Type Casting/Coheshion

```js
//Implicit typecasting
var x1 = 5;
var x2 = "6";
console.log(x1 - x2); //-1 here subtraction has only one job
console.log(x1 + x2); //56 here concatination has high priority rather than addition

//excplicit typecasting
var x1 = 5;
var x2 = "6";
console.log(x1 - x2);
console.log(x1 + parse(x2));
```

## comparison and faster comparison between "==" & "==="

```js
var x1 = 5;
var x2 = "5";
console.log(x1 == x2); // this one will first converst then it will checks so it is late
console.log(x1 === x2); // this one is fast because only one step
```

## Types of Functions

- Normal Function

```js
fucntion double(n){
   return n*2;
}
```

- Arrow Function

```js
const double = (n) => {
  return n * 2;
};

or;
const double = (n) => n * 2; // for only one line in the function
```

## -DRY principle(Don't repeat yourself)

solution is use function

## Five Pillers of Code Quality

- Readability - can be reabable i.e understandable
- Maintainability-code debt
- Extensibility- can able to add new features and it should be easy to add new features
- Testability-should be less errors
- Performance-working for desired output or not
