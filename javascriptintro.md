# Introduction to Java Script

1. Data type declaration in js is not necessary

2. To find the what type of data type the variable is we use

   ```js
   Syntax: typeof var_name; //
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

   # Types of declarations

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
console.log(x1 + parseInt(x2));
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

## Copy by Value & Copy by Reference

- copy be value means it will create a copy of a variable which won't affect the copied variable
- While in the case of copy by reference it will point the same address i.e both the variables will point the same address which will affect the copied variable
- for copy by value use spread operator[... var-name];

```js
var q1 = [100, 200, 300];
var q2 = [...q1]; //copy by value[spread operator]
var q3 = [10, 20, ...q2, 400];
```

## For loops

```js
for (
  let i = 0;
  i < marks.length;
  i++ //more contrl
) {
  console.log("index:", i, "Marks:", marks[i]);
}

for (let idx in marks) {
  //readable and simple
  console.log("index:", idx, "Marks:", marks[idx]);
}
for (let mark of marks) {
  //Readable and cleaner
  console.log("Marks:", mark);
}
```
