package main

import (
	"fmt"
	"os"
	"time"
	"gopkg.in/qml.v1"
)

func main() {
	if err := qml.Run(run); err != nil {
		fmt.Fprintf(os.Stderr, "error: %v\n", err)
		os.Exit(1)
	}
}

func run() error {
	qml.SetWindowIcon("../res/1.ico")

	engine := qml.NewEngine()
	controls, err := engine.LoadFile("../res/main.qml")
	if err != nil {
		return err
	}

	window := controls.CreateWindow(nil)

	window.Show()
	go func(){
		window.Wait()
	}()
	// for CI Service Testing
	time.Sleep( 5 * time.Second)
	fmt.Println("Auto Closing after 5s.")
	return nil
}
