void main() {
  final now = DateTime.now();
  // const later = DateTime.now();  // Uncomment this line
  print(now);
}
/*
Q: What happens if you uncomment the const later = DateTime.now(); line?

✅ Answer:
It will fail to compile.

const requires a compile-time constant.

DateTime.now() is only known at runtime, so it must use final.
*/