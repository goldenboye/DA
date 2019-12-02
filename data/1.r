roll  <- function() {
  die = 1:6
  d = sample(x = die, size = 2, replace = F)
  
  print(d[1])
  print(d[2])
  print(d[1]+d[2])
}

roll()
