package main
import (
    "fmt"
    "io/ioutil"
)

func check(e error) {
    if e != nil {
        panic(e)
    }
}

func main() {
    fmt.Println("Go: Hello world!")
    dat, err := ioutil.ReadFile("resources/hello.json")
    check(err)
    fmt.Print(string(dat))
}