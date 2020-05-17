package router

import (
	"os"
	"path/filepath"
    "runtime"
	"github.com/gin-gonic/gin"
	"fmt"

	first "github.com/michaelchandrag/fabelio-test/module/controller/first"
	second "github.com/michaelchandrag/fabelio-test/module/controller/second"
	history "github.com/michaelchandrag/fabelio-test/module/controller/history"
)

var (
    _, b, _, _ = runtime.Caller(0)
    basepath   = filepath.Dir(b)
)

func SetupRouter() *gin.Engine {
	app := os.Getenv("APP")
	r := gin.Default()
	pre := ""
	if app == "dev" {
		pre = basepath + "/../../"
	}
	fmt.Println(app)
	fmt.Println(pre)
	r.LoadHTMLGlob(pre + "public/views/*")
	r.Static("/css", pre + "public/assets/css")
	r.Static("/fonts", pre + "public/assets/fonts")
	r.Static("/img", pre + "public/assets/img")
	r.Static("/js", pre + "public/assets/js")

	r.POST("/fetch_data_from_fabelio", first.FetchDataFromFabelio)

	r.GET("/", first.RenderFirstPage)
	r.GET("/page2", second.RenderSecondPage)
	r.GET("/history/:productId", history.RenderHistoryPage)

	return r
}