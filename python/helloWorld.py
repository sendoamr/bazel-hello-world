def hello_world():
  print("Hello from a function") 
  file = open("resources/hello.json", "r") 
  x = (file.read())
  print(x)
  return x

hello_world()