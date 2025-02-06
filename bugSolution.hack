function foo(x: int): int {
  var result: int = 1;
  for (var i = 1; i <= x; i++) {
    result *= i;
  }
  return result;
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
  print(bar(-1)); // Output: 0
  print(bar(100));// Output: large factorial, no stack overflow
}