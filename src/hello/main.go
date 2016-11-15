package main
 
import (
	"fmt"
	"net/http"
	"runtime"
)
 
func indexHandler( w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World! \nI'm running on %s with an %s CPU \nGolang Docker container", runtime.GOOS, runtime.GOARCH)
}

func main() {
	http.HandleFunc("/", indexHandler)
	http.ListenAndServe(":8080",nil)
}