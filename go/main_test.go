package main

import (
	"testing"
	"os/exec"
	"fmt"
)

func HelloWorldTest(t *testing.T) {
  	cmd := exec.Command("./main.go")
    	if err := cmd.Run(); err != nil{
       	fmt.Println(err)
    }
  	if true {
    	t.Error("Error in hello world")
  	}
}