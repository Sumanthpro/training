# Introduction to Java Script

# Day-3

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
## tips

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

# Day-4

## ES6- features

- numeric seperators
- let and const
- rest
- spread--- ...
- template literal--- ``

## Objects

```js
Objects.keys(object_name);
Objects.values(object_name);
```

## Template Literal(Interpolation)

add ${ }-to the variable usage.

```js
function func_ name(first,last)
{
return welcome ${last},${first};
}
```

## Destructoring

### array

```js
const [t1, t2, t3] = [100, 200];
console.log(t1, t2, t3); //it will shows t3 as undefined

const [t1, t2, t3 = 80] = [100, 2000, 500];
console.log(t1, t2, t3); //it will print t3 as 500 because only it will be printed as undefined only if it is not declared

const [t1, t2, t3 = 80] = [100, 200, null];
console.log(t1, t2, t3); //t3 will print null because null is an object

const [, t1, t2, t3 = 80] = [100, 200, null];
console.log(t1, t2, t3); //it will print 200,null,80 becuase it is called holes
```

### Object

```js
const{name,house,net,power}=
{
  name:"tony stark";
  house:"👽";
  net:"1000M";
  power:"Rich";

}
Console.log(name);//tony stark
Console.log(house);//👽
console.log(power);//rich
```

## Truthy && Falsyy

```js
js;
var ch = "cool";
if (ch) console.log("true");
else console.log("false");
```

## In built methods in string

```js
var n = "sumanth";
n.toUpperCase();
n.toLowerCase();
"This is a beautiful day", split(" "); // converts every word into the array
"This is a beautiful day", join("|");
"This is a beautiful day", split(""); // converts every character into an array
```
