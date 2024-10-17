# Html,CSS

## List in html

- Unordered List:
  a list with not ordered only dotted

```html
<ul>
  <li>sleeping 😪</li>
  <li>Cooking 🍽️</li>
  <li>Anime</li>
  <li>Table tennis 🏓</li>
  <li>travelling ✈️</li>
  <h3>Hobbies</h3>
</ul>
```

- Ordered list : a list with sequential order

```html
<ol>
  <li>sleeping 😪</li>
  <li>Cooking 🍽️</li>
  <li>Anime</li>
  <li>Table tennis 🏓</li>
  <li>travelling ✈️</li>
</ol>
```

- Nested list : combiantion of these two lists

```html
<ul>
<li>title</li>
<li>
<ol>
<li>sub- title1</li>
</li>
```

- Ancher tag <a>href="link"Button</a> to place links int web page
- to open a new page after clicking a link use target

## Types of CSS

1. Inline css : Writing css code within the tag

```html
<h3 style="color: palegreen;">Hobbies</h3>
```

2. Internal css: writing css code in the same file

```html
<style>
    h3{
        color:orchid;
        /* internal css */
    }

```

3. External css: writing the css code in another file and importing that file

## Text Styling

1. font-size
2. font weight:thickness of font
3. Font style :italic
4. color

```html
h1{ font-size :60px; or percentage; font-weigth: normal; font-style : italic;
color: color_name; }
```

## Text Styling -II

1. text-transform: upper case ,lower case changes
2. text-allign : borders
3. text_decoration: ex: underline
4. letter-spacing: spacing between letters
5. line-height:

- if font-size is high line height is low and vice versa

```html
<span> --- wil do nothing but using class it can changes a particular sentence in a para.
```

