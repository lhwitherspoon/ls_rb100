Assignment: Launch School RB100 Variables
2020-07-23
Les Witherspoon

In each of the code snippets below, what is the output of `x`? 
```
x = 0
3.times do
  x += 1
end
puts x
```
This snippet will output `3`.

```
y = 0
3.times do
  y += 1
  x = y
end
puts x
```
`x` is likely to be an error. 
This snippet will give an error

Are there any errors in either snippet?
Yes, in the second snippet (starts `y = 0`)
If there are errors, are they the same or different errors, and why? 

The first snippet does not throw an error. In the second,  `x` is declared inside the loop and thus is not available outside the loop. It has an "interior scope". 