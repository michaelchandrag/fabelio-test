package history

import (
	"fmt"
	"os"
	"net/http"

	"github.com/gin-gonic/gin"


	model "github.com/michaelchandrag/fabelio-test/module/model"
)

func RenderHistoryPage (c *gin.Context) {
	baseUrl := os.Getenv("BASE_URL")

	productId := c.Param("productId")

	var product model.Product
	err := product.FindByProductID(productId)

	if err != nil {
		fmt.Println(err)
	}

	product.DetailLatest.FindLatestDetailByProductID(productId)
	listDetail, err := new(model.Detail).FindByProductID(productId)
	if err != nil {
		fmt.Println(err)
	}

	product.DetailHistory = listDetail

	c.HTML(http.StatusOK, "history.html", gin.H{
		"title": "Main website",
		"baseUrl": baseUrl,
		"listProducts": product,
	})
}