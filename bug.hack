function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0) {
    return 0; 
  } else {
    return foo(x);
  }
}

function main(): void {
  print(bar(5)); // Output: 120
  print(bar(-1));//Output: 0
}