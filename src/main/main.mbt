// This is a package that make a string to integer conversion
pub fn string2int(s : String) -> Int {
  let mut result = 0
  let mut start = 0
  let mut sign = 1
  if s.length() > 0 && s[0] == '-' {
    sign = -1
    start = 1
  }
  for i = start; i < s.length(); i = i + 1 {
    let ch = s[i]
    if ch >= '0' && ch <= '9' {
      result = result * 10 + (ch.to_int() - '0'.to_int())
    } else {
      abort("Invalid number format")
    }
  }
  result * sign
}
fn main {
  println(string2int("1234")) // 1234
}
