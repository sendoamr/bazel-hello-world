def hello_world():
  print("Hello from a function") 
  file = open("resources/hello.json", "r") 
  print file.read()

hello_world()