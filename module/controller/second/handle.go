package first

import (
	"os"
	"net/http"

	"github.com/gin-gonic/gin"


	model "github.com/michaelchandrag/fabelio-test/module/model"
)

func RenderSecondPage (c *gin.Context) {
	baseUrl := os.Getenv("BASE_URL")

	var objProduct model.Product
	listProducts, _ := objProduct.Finds()

	for key, val := range listProducts {
		listProducts[key].DetailLatest.FindLatestDetailByProductID(val.ProductID)
	}

	c.HTML(http.StatusOK, "page2.html", gin.H{
		"title": "Main website",
		"baseUrl": baseUrl,
		"listProducts": listProducts,
	})
}